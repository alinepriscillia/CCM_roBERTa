# CCM Project

This repository contains the completed paper, the final analysis notebook, figure exports, and the result tables used for the project's statistical analysis.

## Repository contents

- `paper.pdf`: completed project paper.
- `sagar_final_notebook.ipynb`: final code notebook. It loads the QNLI dataset from Hugging Face and uses the pretrained `roberta-base` model.
- `figures/`: exported project visualizations.
- `data/`: CSV result tables, including `sagar.csv` used by the R analysis.
- `analysis_script.R`: ANOVA and assumption checks for `data/sagar.csv`.
- `requirements.txt`: Python dependencies for the notebook.

## Running the notebook

Use Python 3.10 or newer. From this directory, create an environment and install the dependencies:

```sh
python -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
```

Open `sagar_final_notebook.ipynb` in Jupyter or VS Code and run its cells in order. The notebook downloads QNLI and `roberta-base`, so the first run requires internet access. Model weights and training outputs are generated locally and are intentionally not tracked.

The training cell saves the trained model to `models/test`, and the following cell loads that saved checkpoint for evaluation. Run the training cell before continuing; it creates the checkpoint locally.

## R analysis

Run `analysis_script.R` from the repository root so its relative path to `data/sagar.csv` resolves. The script requires R and the packages it loads at the top of the file.

## Data and outputs

The CSV files in `data/` are analysis outputs, not raw GLUE data. The notebook fetches its QNLI sample through Hugging Face Datasets. Generated model directories, caches, and notebook checkpoints are excluded from version control.
