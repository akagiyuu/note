#import "@preview/clean-math-paper:0.2.0": *
#import "@preview/codly:1.2.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()

#codly(languages: codly-languages)

#let date = datetime.today().display("[month repr:long] [day], [year]")
#show: template.with(
    title: [Filtering Spam E-Mails #linebreak() A Gaussian Naive Bayes Approach],
    authors: (
        (name: "Huynh Minh Khang - SE192197", affiliation-id: 1),
    ),
    affiliations: (
        (id: 1, name: "FPT University"),
    ),
    date: date,
    link-color: rgb("#008002"),
    abstract: [
        This report presents a comprehensive study on the implementation of a spam filtering system using the Gaussian Naive Bayes algorithm. The objective is to accurately classify emails as spam or ham by leveraging probabilistic methods underpinned by statistical theory. The document details each stage of the process—from data ingestion and preprocessing through feature extraction and model evaluation. In addition, the report elucidates the theoretical foundations of Bayes’ Theorem and its application within a Gaussian framework. Experimental results demonstrate that the proposed approach attains competitive accuracy with efficient training and inference times.
    ],
    keywords: ("Email", "Spam", "Naive Bayes'", "Gaussian Naive Bayes'"),
)

#counter(heading).update(0)

= Introduction

Spam emails continue to challenge both individual users and organizations, as they inundate inboxes and pose potential security risks. The present study explores the application of the Gaussian Naive Bayes algorithm—a probabilistic classifier noted for its simplicity and computational efficiency—to the task of spam detection. Despite perceptions of Naive Bayes as a simplistic method, when implemented correctly, it demonstrates robust performance in real-world settings.

This report delineates the methodology, from data collection and preprocessing to model training and evaluation, and discusses the underlying probabilistic theory. Emphasis is placed on the systematic removal of noise from email text, as well as the mathematical justification for using Gaussian assumptions in continuous feature spaces.

= Mathematical Background
Bayes’ Theorem is a cornerstone of probability theory and provides a mechanism for updating prior beliefs in light of new evidence. The theorem is expressed as:
$
    P(C bar X) = (P(X bar C) dot P(C)) / P(X)
$

In the context of spam filtering:
- *Posterior Probability ($P(C bar X)$):* The probability that an email is spam given the observed features.
- *Likelihood ($P(X bar C)$):* The probability of observing the given features assuming the email is spam.
- *Prior Probability ($P(C)$):* The initial probability of an email being spam.
- *Evidence ($P(X)$):* The probability of these features.

Naive Bayes algorithms calculate these probabilities under the assumption of feature independence, selecting the class with the highest posterior probability. In the Gaussian variant, each continuous feature is assumed to follow a normal distribution, thereby accommodating numerical data effectively.

For continuous features, the likelihood for each feature $x_i$ given class $C$ is modeled as:
$
    P(x_i | C) = 1 / sqrt(2 pi sigma_(C,i)^2) exp(-(x_i - mu_(C, i))^2 / (2 sigma_(C, i)^2))
$

Assuming feature independence, the joint likelihood for the feature vector $X = {x_1, x_2, ..., x_n}$ is:
$
    P(X bar C) = product_(i = 1)^n 1 / sqrt(2 pi sigma_(C,i)^2) exp(-(x_i - mu_(C, i))^2 / (2 sigma_(C, i)^2))
$

For numerical stability, the logarithm of the likelihood is taken:
$
    log P(X bar C) = -1 / 2 sum_(i = 1)^n (log(2 pi sigma_(C, i)^2) + (x_i - mu_(C, i))^2 / sigma_(C, i)^2)
$

The decision rule for classification is thus:
$
    hat(C)
    &= "argmax"_C [(P(C)P(C | X)) / P(X)] \
    &= "argmax"_C [P(C)P(C | X)] \
    &= "argmax"_C [log (P(C)P(C | X))] \
    &= "argmax"_C [log P(C) + log P(X bar C)]
$

= Data Acquisition and Consolidation

The study utilizes three datasets, each containing emails labeled as spam (1) or ham (0). The datasets are sourced from multiple repositories to ensure diversity. The following procedure describes data ingestion, cleaning, and consolidation:

```python
import pandas as pd

data1 = pd.read_csv("data/lingSpam.csv")
data2 = pd.read_csv("data/enronSpamSubset.csv")
data3 = pd.read_csv("data/completeSpamAssassin.csv")

data1.drop("Unnamed: 0", inplace=True, axis=1)
data2.drop(["Unnamed: 0", "Unnamed: 0.1"], inplace=True, axis=1)
data3.drop("Unnamed: 0", inplace=True, axis=1)
data = pd.concat([data1, data2, data3], axis=0)

data.dropna(inplace=True)
```

The resulting dataset comprises approximately 18,650 entries, each with a body text and a corresponding label.

#figure(
    table(
        columns: 3,
        [*Id*], [*Body*], [*Label*],
        "0", "Subject: great part-time or summer job !\n \n ...", "1",
        "1", "Subject: auto insurance rates too high ?\n \n ...", "1",
        "2", "Subject: do want the best and economical hunti...", "1",
        "3", "Subject: email 57 million people for $ 99\n \n...", "1",
        "4", "Subject: don't miss these !\n \n attention ! ...", "1",
    ),
    caption: [Example data],
)

= Text Preprocessing and Feature Engineering

Textual data undergoes extensive preprocessing to enhance the performance of the classification model. The steps are as follows:

== Link Removal

Hyperlinks are removed from the email text using regular expressions to eliminate irrelevant tokens.

```python
import re

x = data["Body"]
x_clnd_link = [re.sub(r"http\S+", "", text) for text in x]
```

== Removal of Non-Alphanumeric Characters

Unwanted characters are stripped from the text using the following pattern:

```python
pattern = "[^a-zA-Z0-9]"
x_cleaned = [re.sub(pattern, " ", text) for text in x_clnd_link]
```

== Lowercasing

Text is converted to lower case to ensure uniformity:

```python
x_lowered = [text.lower() for text in x_cleaned]
```

== Tokenization

The text is segmented into tokens using NLTK’s word tokenization function:

```python
import nltk

x_tokenized = [nltk.word_tokenize(text) for text in x_lowered]
```

== Lemmatization

Tokens are lemmatized using NLTK’s WordNet Lemmatizer, which reduces words to their canonical forms:

```python
nltk.download("wordnet")
from nltk.stem import WordNetLemmatizer

lemma = WordNetLemmatizer()
x_lemmatized = [[lemma.lemmatize(word) for word in text] for text in x_tokenized]
```

== Stopword Removal

Stopwords are removed to retain only the most informative tokens:

```python
stopwords = nltk.corpus.stopwords.words("english")
x_prepared = [[word for word in text if word not in stopwords] for text in x_lemmatized]
```

The number of unique tokens is then computed to evaluate the vocabulary size.

== Bag-of-Words Feature Extraction

A bag-of-words representation is constructed using scikit-learn’s CountVectorizer, limiting the feature set to 20,000 terms:

```python
from sklearn.feature_extraction.text import CountVectorizer

vectorizer = CountVectorizer(max_features=20000)
x_features = vectorizer.fit_transform([" ".join(text) for text in x_prepared]).toarray( )
```

Subsequently, the dataset is partitioned into training and testing subsets:

```python
from sklearn.model_selection import train_test_split
import numpy as np

x_train, x_test, y_train, y_test = train_test_split(
    x_features, np.asarray(data["Label"]), random_state=42, test_size=0.2
)
```

= Model Development: Gaussian Naive Bayes

The Gaussian Naive Bayes classifier is employed to model the probability distributions of continuous features. The model training and evaluation are executed as follows:

== Model Training

During training, the Gaussian Naive Bayes classifier estimates the necessary parameters from the training data for each class $C$ and each feature $i$.

+ *Class Prior:*
    The prior probability of class $C$ is calculated as:
    $
        P(C) = N_C / N
    $
    where $N_C$ is the number of training samples in class $C$ and $N$ is the total number of training samples.

+ *Mean ($mu_(C, i)$):*
    The mean of feature $i$ for class $C$ is computed by:
    $
        mu_(C,i) = 1 / N_C sum_(j: y_j=C) x_(j,i)
    $
    where $x_i_j$ is the $i^"th"$ feature value of the $j^"th"$ sample in class $C$.

+ *Variance ($sigma_(C, i)^2$):*
   The variance of feature $i$ for class $C$ is given by:
    $
        sigma_(C,i)^2 = 1 / N_C sum_(j: y_j=C) (x_(j,i) - mu_(C, i))^2
    $

Below is the corresponding Python snippet that performs model training:

```python
import time
from sklearn.naive_bayes import GaussianNB

start_time = time.time()
NB = GaussianNB()
NB.fit(x_train, y_train)
end_time = time.time()
print(round(end_time - start_time, 2))
```

The training process is computationally efficient, completing in approximately 3.51 seconds.

== Model Evaluation

First, the confusion matrix is computed and visualized as a heatmap to provide insight into the distribution of prediction errors. Let:
- $"TP"$ denote the number of true positives
- $"TN"$ denote the number of true negatives
- $"FP"$ denote the number of false positives
- $"FN"$ denote the number of false negatives

The confusion matrix is defined as:
$
    mat(
    "TN", "TP";
    "FN", "TP";
)
$

The following code computes and visualizes the confusion matrix:

```python
from sklearn.metrics import confusion_matrix
import seaborn as sns
import matplotlib.pyplot as plt

y_pred = NB.predict(x_test)

cm = confusion_matrix(y_true=y_test, y_pred=y_pred)

sns.heatmap(cm, annot=True, fmt="d", cmap="Blues")
plt.xlabel("Predicted")
plt.ylabel("Actual")
plt.show()
```

#figure(
    image("img/confusion-matrix.png"),
    caption: [Confusion Matrix],
)

#figure(
    image("img/normalized-confusion-matrix.png"),
    caption: [Normalized Confusion Matrix],
)

After visualizing the confusion matrix, we calculate key evaluation metrics. The evaluation metrics are defined as follows:
- Accuracy:
$
    "Accuracy" = ("TP" + "TN") / ("TP" + "TN" + "FP" + "FN")
$
- F1-Score:
$
    "F1-Score" = 2 dot 1 / ("Precision"^(-1) + "Recall"^(-1))
$
#h(1cm) #text(style: "italic")[where:]
$
    "Precision" = "TP" / ("TP" + "FP") ", " "Recall" = "TP" / ("TP" + "FN")
$

The corresponding code computes these metrics:

```python
from sklearn.metrics import f1_score

print("Accuracy:", NB.score(x_test, y_test))
print("F1-score:", f1_score(y_test, y_pred))
```

Based on the run, the model achieved an accuracy of approximately 82% and an F1-Score of approximately 80%.

= Conclusion and Future Work

This study provided a systematic exploration of a spam filtering system built upon the Gaussian Naive Bayes algorithm. The report detailed the stages of data ingestion, rigorous text preprocessing, and feature extraction via a bag-of-words model. The Gaussian Naive Bayes classifier, underpinned by sound probabilistic theory, was trained and evaluated, yielding an accuracy of approximately 82% and f1-score of 80%.

Future research directions may include:
- Integrating additional features such as email metadata.
- Comparing alternative classifiers (e.g., support vector machines, ensemble methods).
- Investigating deep learning techniques for improved performance on larger datasets.

#pagebreak()

#bibliography(
    title: [References],
    "references.yml",
    full: true,
)
