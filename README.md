# Machine Learning Visualized

URL: [https://gavinkhung.github.io/machine-learning-visualized/](https://gavinkhung.github.io/machine-learning-visualized/)

Machine Learning Visualized is a [Jupyter Book](https://jupyterbook.org/en/stable/intro.html) containing Jupyter Notebooks that implement and mathematically derive machine learning algorithms from first-principles.

The output of each notebook is a visualization of the machine learning algorithm throughout its training phase, ultimately converging at its optimal weights.

There is a separate Github Repository for each machine learning algorithm. Thus, this repository is simply the code to configure and build the Jupyter Book. At a very high level, Jupyter Books allow you to build a website with Markdown files and Jupyter Notebooks. Notice that none of the Jupyter Notebooks are in this repository. There is a SH script to download the relevant Jupyter Notebooks from other Github Repos. Once that is complete, the Jupyter Book can be built. The website is updated using the GitHub Action at `.github/workflows/ci.yml` after every commit or pull request. To build the website locally, see the Usage section below.

## Jupyter Notebooks

- [Neural Networks Repo](https://github.com/gavinkhung/neural-network)
- [Logistic Regression Repo](https://github.com/gavinkhung/logistic-regression)
- [Perceptron Repo](https://github.com/gavinkhung/perceptron)
- [Principal Component Analysis Repo](https://github.com/gavinkhung/pca)
- [K Means Repo](https://github.com/gavinkhung/k-means-clustering/)
- [Gradient Descent Repo](https://github.com/gavinkhung/gradient-descent)

## Jupyter Book Info

Table of Contents and structure of the book is specified at `_toc.yml`.

Configuration is specified at `_config.yml`.

For more information, check out the [Jupyter Book Docs](https://jupyterbook.org/en/stable/intro.html).

## Usage

### Step 1: Download the Jupyter Notebooks

```sh
chmod +x ./download_notebooks.sh
./download_notebooks.sh
```

### Step 2: Building the Jupyter Book

#### Option 1: jupyter-book CLI

```sh
pip install -U jupyter-book
jupyter-book build .
```

#### Option 2: Docker Compose

```sh
docker compose up
docker compose down --volumes --rmi local
```

#### Option 3: Docker

```sh
docker build -t jupyter-book .
docker run --rm -v "$(pwd)":/usr/src/app jupyter-book
```

### Step 3: Open the Jupyter Book

Navigate to `_build/html/index.html`
