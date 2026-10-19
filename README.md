# NFL Performance Research

Historical research by Eric Matthew Rupinski. Reconstruction status: **partial; original empirical findings have not been re-estimated**. Original research history is preserved.

## Research question and value

Can team performance relationships inform matchup research? Existing same-game relationships are descriptive; prospective forecasts require prior-game information.

## Data and methodology

Original files remain the source of historical methodology. `data/requirements.json` inventories detected input filenames and packages; it is an incomplete static manifest, not a locked environment. Raw files are absent from this repository. Reacquire them through their original authorized sources; competition and third-party licenses must be checked before reuse.

## Audit and implemented changes

49 code files; 6 parse failures and 912 machine-specific path references. Existing Chargers prediction work uses same-game team statistics and random row splits. Many pairwise/subset searches; shared games risk leakage.

Repaired malformed glmulti argument placement and duplicate commas in NGLMULTISCRIPT.R; documented inference versus forecast boundary.

## Findings and validation

No new empirical finding or revised performance score is asserted. Unit checks use small constructed inputs to verify the repaired mathematics and data contracts. Parsing verifies syntax only; it does not execute an analysis. Available original illustrations are historical outputs, not independently regenerated evidence.

## Reproduce the supported checks

R 4.5.2 was used for the base-R checks.

```sh
Rscript --vanilla -e 'invisible(parse("NGLMULTISCRIPT.R"))'
```

The original dependency set is not fully available or version locked. Successful helper tests do not establish successful execution of the original model.

## Practical applications and limits

Five other original files still fail parsing. Original workbooks and dated schemas are absent. Must construct prior-game features before making pregame forecasting claims. Old Chargers work is game-level; Counterpunch is play-level contextual benchmarking.

## Next work

Recover input data with provenance and variable timing; declare the observational unit; isolate complete games/matches chronologically; fit transformations on training folds; compare against a simple baseline; regenerate figures and revise findings from held-out evidence. Retain old conclusions as historical until then.

## Executed pregame-information reconstruction

`scripts/evaluate_lagged_matchups.py` reads an authorized local WTP AV workbook, explicitly maps historical opponent names to team codes, constructs three-game form from prior weeks only, and evaluates a fixed logistic model on later weeks. Complete games remain together in the chronological split and bootstrap; ties, if present, are excluded from the binary win/loss evaluation. Its source hash, eligibility and model-versus-constant results are recorded privately. The pipeline was executed, but it does not reproduce the original same-game forecasting claim or establish a current Chargers model. The full archive still has unrepaired scratch files and unreproduced model families.

Run from the repository root with `NFL_DATA_DIR=/path/to/authorized/workbook/folder RESEARCH_OUTPUT_DIR=/private/output python scripts/evaluate_lagged_matchups.py`. Python requirements are pinned in `requirements-reconstruction.txt`; Rscript and readxl are also needed. Source data and empirical results remain outside Git.
