#import "../../../../shared/environments.typ": *

==== The Patient-Specific Null Matrix

For a given patient, construct a matrix: rows = drugs trialed, columns = cascade nodes. Each cell is ternary: + (node is rate-limiting), − (node is not rate-limiting, null response eliminated it), ? (untested). The pattern of − cells carves out the remaining hypothesis space. The goal is not a single + — it is maximally constrained residual space.

A patient with 8 null results and no positive results has 8 mechanisms eliminated. Their differential is *narrower* than a patient with 2 positive results (each consistent with 3-4 mechanisms) and no nulls. The first patient knows what the disease is NOT; the second knows something it might be but cannot distinguish among several.

*Consequence:* The fear of "trying something and having it not work" is inverted by this framework. Every null result is a step toward a narrower differential. The goal is not to find a drug that works — it is to maximize the number of mechanisms eliminated per trial. This reframes the entire patient experience of treatment failure: those failures were data collection.
*Origin:* mechanistic-pathway-tracing.

