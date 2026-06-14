#!/usr/bin/env bash
set -euo pipefail

# Fail on HTTP errors (--fail) and follow redirects (-L) so that a 404 does not
# get silently written into a .ipynb file and break the build later.
download() {
  curl --fail --location --silent --show-error -o "$1" "$2"
}

# Chapter 1
download chapter1/linear_regression.ipynb https://raw.githubusercontent.com/gavinkhung/gradient-descent/refs/heads/main/linear_regression.ipynb
download chapter1/REGRESSION-gradientDescent-data.txt https://raw.githubusercontent.com/gavinkhung/gradient-descent/refs/heads/main/REGRESSION-gradientDescent-data.txt
download chapter1/optimizers.ipynb https://raw.githubusercontent.com/gavinkhung/optimizers/refs/heads/main/optimizers.ipynb

# Chapter 2
download chapter2/pca.ipynb https://raw.githubusercontent.com/gavinkhung/pca/refs/heads/main/pca.ipynb
download chapter2/k_means.ipynb https://raw.githubusercontent.com/gavinkhung/k-means-clustering/refs/heads/main/k_means.ipynb

# Chapter 3
download chapter3/logistic_regression.ipynb https://raw.githubusercontent.com/gavinkhung/logistic-regression/refs/heads/main/logistic-regression.ipynb
download chapter3/perceptron.ipynb https://raw.githubusercontent.com/gavinkhung/perceptron/refs/heads/main/perceptron.ipynb

# Chapter 4
download chapter4/neural_network.ipynb https://raw.githubusercontent.com/gavinkhung/neural-network/refs/heads/main/neural_network.ipynb
download chapter4/plot/nn.svg https://raw.githubusercontent.com/gavinkhung/neural-network/refs/heads/main/plot/nn.svg
download chapter4/plot/architecture/nn-1.png https://raw.githubusercontent.com/gavinkhung/neural-network/refs/heads/main/plot/architecture/nn-1.png

download chapter4/neural_network_weights.ipynb https://raw.githubusercontent.com/gavinkhung/neural-network/refs/heads/main/neural_network_weights.ipynb
