# Cookiecutter Data Science Devcontainer Feature

## Overview

This devcontainer feature installs [Cookiecutter Data Science](https://cookiecutter-data-science.drivendata.org/), a standardized but flexible project structure for doing and sharing data science work. It provides the `ccds` command, allowing you to quickly set up a new data science project with a well-organized directory structure.

## Prerequisites

- [Docker](https://www.docker.com/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Installation

To use this feature in your devcontainer, add the following to your `devcontainer.json` file:

```json
"features": {
  "ghcr.io/bellatrick/feature-starter/cookiecutter:latest": {}
}
```

## Usage

Once your devcontainer is built with this feature, you can create a new data science project structure by running:

```bash
ccds
```
Note: If the `ccds` command is not recognized, try running `source /usr/local/bin/activate-cookiecutter-ds` first to activate the environment then run `ccds` again.

This will prompt you for project details and create a new directory with the Cookiecutter Data Science project structure.

## Project Structure

The created project will have the following structure:

```
├── LICENSE
├── Makefile           <- Makefile with commands like `make data` or `make train`
├── README.md          <- The top-level README for developers using this project.
├── data
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
├── docs               <- A default Sphinx project; see sphinx-doc.org for details
├── models             <- Trained and serialized models, model predictions, or model summaries
├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
│                         the creator's initials, and a short `-` delimited description, e.g.
│                         `1.0-jqp-initial-data-exploration`.
├── references         <- Data dictionaries, manuals, and all other explanatory materials.
├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures        <- Generated graphics and figures to be used in reporting
├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
│                         generated with `pip freeze > requirements.txt`
├── setup.py           <- Make this project pip installable with `pip install -e`
└── src                <- Source code for use in this project.
    ├── __init__.py    <- Makes src a Python module
    │
    ├── data           <- Scripts to download or generate data
    │   └── make_dataset.py
    │
    ├── features       <- Scripts to turn raw data into features for modeling
    │   └── build_features.py
    │
    ├── models         <- Scripts to train models and then use trained models to make
    │   │                 predictions
    │   ├── predict_model.py
    │   └── train_model.py
    │
    └── visualization  <- Scripts to create exploratory and results oriented visualizations
        └── visualize.py
```

## Development

To contribute to this project:

1. Fork the repository
2. Create a new branch for your feature
3. Make your changes
4. Submit a pull request

## Testing

To test the feature locally:

1. Install the Dev Container CLI:
   ```
   npm install -g @devcontainers/cli
   ```

2. Run the test command:
   ```
   devcontainer features test -f cookiecutter-data-science -i mcr.microsoft.com/devcontainers/base:ubuntu .
   ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

If you have any questions or feedback, please open an issue in this repository.