#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 10: External Trigger Calendar
// =============================================================================

= External Trigger Calendar
<sw:external-trigger-calendar>

#chapter-abstract[
ME/CFS symptoms respond to environmental triggers patients often miss: barometric pressure drops, pollen counts, temperature extremes, local infection rates. A tool that pulls public data (weather, pollen, air quality, wastewater surveillance) and cross-correlates with patient symptom scores. Output: which environmental variables predict their symptoms, with what lag, and what they can do about it.
]

== Motivation

Patients with MCAS, POTS, or autonomic dysfunction are exquisitely sensitive to environmental triggers: histamine release from barometric pressure drops, mast cell degranulation from pollen, autonomic stress from temperature extremes, immune activation from circulating infections. But without systematic tracking, these connections remain at the level of "I feel worse when it rains" — imprecise, anecdotal, untestable.

The external trigger calendar automatically correlates objective environmental data with the patient's symptom scores, identifying patterns the patient might never notice: cognitive fog worsens 2 days after the barometric pressure drops below a threshold, joint pain spikes during high-pollen periods, crashes cluster 4 days after local COVID wastewater levels rise.

This is actionable: if the patient knows that tomorrow's pollen count will exceed their personal threshold, they can pre-dose antihistamines, avoid outdoor exposure, or reschedule exertion. The calendar provides environmental forecasting for ME/CFS — not "what will the weather be" but "what will the weather do to YOU."

== Core Functionality

=== Environmental Data Ingestion

The tool pulls public datasets:
- *Weather.* Temperature, humidity, barometric pressure, barometric pressure change rate (from OpenWeatherMap, NOAA, or local meteorological services)
- *Air quality.* PM2.5, PM10, ozone, NO2 (from OpenAQ or local monitoring stations)
- *Pollen.* Grass, tree, weed pollen counts (from regional pollen monitoring networks; coverage varies by country)
- *Infection rates.* COVID wastewater levels (from CDC/WastewaterSCAN or local equivalents), influenza-like illness surveillance (from national health agencies)
- *UV index.* From weather APIs
- *Geomagnetic activity (experimental).* Some patients report sensitivity to geomagnetic storms — included as an exploratory variable

All data is location-specific (patient's ZIP/postal code or GPS-derived location, with privacy-preserving coarse granularity).

=== Cross-Correlation Engine

The patient's daily symptom scores (from the Wearable Dashboard spec or the Daily Fluctuation Tool proposal in the companion document, or manually entered) are cross-correlated with each environmental variable at lags of 0–7 days.

For each environmental variable at each lag, compute: Pearson correlation (for continuous variables like temperature), threshold analysis (for binary events like "barometric pressure drop > 5 hPa in 6 hours"), and Granger causality (does the environmental variable predict symptoms, accounting for autocorrelation?).

False discovery rate correction (Benjamini-Hochberg) to account for multiple testing across many variables and lags.

=== Output: Personal Trigger Profile

For each patient, a summary of the environmental variables that significantly predict their symptoms, with effect size and lag:

"Your symptom predictors (p < 0.01, FDR-corrected):
- Barometric pressure drop > 5 hPa → joint pain increase at lag 1 day (r = 0.42)
- Pollen count (grass) > 50 grains/m³ → cognitive fog increase at lag 2 days (r = 0.35)
- Local COVID wastewater level elevation → crash probability increase at lag 4 days (r = 0.28)"

Below significance threshold: variables that were tested but showed no association.

=== Predictive Forecast

For the upcoming 3–7 days:
- If pollen is forecast to exceed the patient's personal threshold → alert: "High grass pollen tomorrow. Your data suggests cognitive fog may worsen. Consider pre-dosing antihistamine tonight."
- If barometric pressure is forecast to drop sharply → alert: "Barometric pressure drop expected Thursday. Your data suggests joint pain may flare. Schedule light activity for Friday."

The forecast is probability-based: "65% chance of symptom flare based on forecasted pollen levels (your historical response rate to similar pollen levels)."

== Relationship to Existing Content

- Ch7 (Immune Dysfunction, parent paper): MCAS mechanism and environmental trigger sensitivity
- Ch10 (Cardiovascular, parent paper): autonomic dysfunction and environmental sensitivity
- the Wearable Dashboard spec (Wearable Dashboard): the symptom data source
- the Crash-Resilience Scorecard proposal (Crash-Resilience Scorecard): the environmental trigger data could be incorporated as an additional component of the resilience score

== Technical Architecture

*Data ingestion.* Scheduled background jobs fetch environmental data for all registered locations. Data cached locally; historical data stored for correlation analysis (requires at least 30 days of concurrent symptom + environmental data for reliable correlation).

*Privacy.* Location is stored coarsely (ZIP code or city level, not GPS). Symptom data stays on-device; only anonymized, aggregated correlations are optionally shared for population-level research.

*Platform.* Mobile app or web dashboard. The patient views their trigger profile and forecast alerts. A widget displays the 3-day environmental forecast with personal risk ratings.

== Limitations

#limitation[
*Sufficient data requirement.* Reliable correlation requires at least 30 days of concurrent daily symptom scores and environmental data. Patients who do not track symptoms daily, or who live in areas with limited environmental monitoring, will not receive useful output for weeks or months.

*Correlation vs causation.* A correlation between barometric pressure and joint pain does not prove the pressure causes the pain — both could be driven by a seasonal confound (e.g., winter = both low pressure and less outdoor activity, with activity being the true cause). The tool reports associations, not causal mechanisms.

*Hyperawareness risk.* Alerting a patient to an impending trigger may induce anticipatory anxiety that amplifies symptoms (nocebo effect). The tool should frame alerts as "your data suggests a possible pattern" rather than "you will feel worse tomorrow."

*Geographic data coverage.* Pollen monitoring, wastewater surveillance, and air quality monitoring are not universally available. Patients in rural areas or developing countries will have fewer environmental variables to test.
]

== Consequence

#key-point[
The external trigger calendar identifies environmental drivers of ME/CFS symptoms that patients may never discover on their own. It does not require the patient to hypothesize which triggers matter — it tests them all simultaneously and reports what the data supports. The result is a personalized environmental forecast that gives patients predictive control over their symptoms: not just "I feel worse when it rains" but "the forecast says I have a 65% chance of a flare on Thursday, so I'll pre-dose and reschedule."
]
