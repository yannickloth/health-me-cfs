#import "../../../../../shared/environments.typ": *

#limitation(title: [Data Availability Constrains Model Complexity])[
The number of identifiable parameters in any model is bounded by the information content of available data. For ME/CFS, where typical studies involve $n = 20$--$100$ patients measured at $1$--$3$ time points across $10$--$50$ biomarkers, models with more than approximately $10$--$20$ free parameters risk overfitting. The models in Chapters @ch:energy-metabolism-models through @ch:neuroendocrine-models are therefore deliberately parsimonious, prioritizing well-constrained parameters over biological completeness. Full-complexity models await the large-scale longitudinal datasets currently under development (e.g., DecodeME @DecodeME2025).
]
