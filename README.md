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
