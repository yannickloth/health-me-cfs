#import "/src/main/typst/mecfs/shared/environments.typ": *

// =============================================================================
// Chapter 2: Crash Diary NLP Analyzer
// =============================================================================

= Crash Diary NLP Analyzer
<sw:crash-diary-nlp>

#chapter-abstract[
Patients write free-text crash descriptions. An LLM pipeline extracts structured data — trigger type, latency, severity, symptom composition, recovery slope — the 6 PEM shape parameters from the PEM Shape Decomposition proposal. Converts unstructured patient notes into diagnostic profiles automatically. Deployable as a Telegram/WhatsApp bot: patients message their crash experience, get back their mechanistic profile update.
]

== Motivation

The PEM shape decomposition (the PEM Shape Decomposition proposal in the companion document) is a powerful diagnostic tool but requires patients to manually log structured data across 6 dimensions. Many severe patients cannot sustain structured logging due to cognitive dysfunction. Free-text journaling — "I walked to the kitchen, felt OK, then 4 hours later got hit with crushing fatigue and chills, still in bed 2 days later" — is something patients already do naturally.

The NLP analyzer bridges the gap: it takes unstructured text that patients are already producing and extracts the structured PEM shape parameters. The patient writes a journal entry; the system returns their updated mechanistic profile. This eliminates the data-entry burden and makes the PEM shape decomposition accessible to patients who cannot use structured forms.

== Core Functionality

=== Extraction Pipeline

1. *Trigger detection.* Identifies exertion events described in the text ("walked to the kitchen", "had a phone call", "felt stressed about..."). Classifies trigger type: physical, cognitive, emotional, orthostatic, or none identified.

2. *Latency estimation.* Extracts time expressions ("4 hours later", "the next day", "within an hour"). Computes PEM onset latency from the exertion timestamp to the symptom onset timestamp.

3. *Symptom extraction.* Identifies symptom mentions ("crushing fatigue", "chills", "brain fog", "joint pain", "couldn't move"). Maps to the 7 symptom clusters defined in the Daily Fluctuation Tool proposal and the PEM symptom composition categories in the PEM Shape Decomposition proposal.

4. *Severity inference.* Estimates severity from intensity modifiers ("crushing", "mild", "could barely...", "managed to...") and activity limitation descriptions ("stayed in bed", "couldn't read", "watched TV").

5. *Recovery tracking.* Detects recovery mentions ("back to baseline by Friday", "still recovering", "never fully bounced back"). Estimates recovery slope (linear, stepwise, exponential) and duration.

6. *Multi-episode resolution.* If a single message describes multiple crashes, the pipeline segments by temporal markers and extracts parameters separately for each episode.

=== Output

For each analyzed crash:
- Structured PEM profile: trigger type (certainty), onset latency (hours, certainty), peak severity (0–10), symptom composition (cluster scores), recovery pattern, recovery duration.
- Updated mechanism probability ranking (from the PEM shape → mechanism mapping in the PEM Shape Decomposition proposal).
- Confidence score for each extracted parameter (the LLM is uncertain about some aspects — the tool communicates this).

Over multiple crashes: trend analysis. Is the latency changing? Is the recovery slope deteriorating? Is the symptom composition shifting toward a different mechanism?

=== Interface

Messaging bot (Telegram/WhatsApp). The patient sends a message when they experience or recover from a crash. The bot responds with the extracted profile and a brief mechanistic insight: "This crash pattern (4h onset, flu-like symptoms, 2-day recovery) is most consistent with an immune-activation-dominant mechanism (certainty: 0.30). Your previous crashes have been cognitive-dominant. This shift may indicate an intercurrent infection — consider monitoring for other infection signs."

A companion web dashboard visualizes trends over time (all crashes, parameter trajectories, mechanism probability evolution).

== Relationship to Existing Content

- the PEM Shape Decomposition proposal (PEM Shape Decomposition): the 6-parameter framework the NLP extracts
- the Daily Fluctuation Tool proposal (Daily Fluctuation Tool): the symptom cluster taxonomy
- Ch2–3 (Core/Additional Symptoms, parent paper): the symptom definitions the LLM is trained to recognize

== Technical Architecture

*Model.* A fine-tuned LLM (e.g., a quantized LLaMA or Mistral variant) with a structured extraction head. The model is trained on a corpus of annotated crash descriptions. The training data is the bottleneck — generating a high-quality annotated corpus requires patients or clinicians labeling crash descriptions with the ground-truth PEM parameters.

*Privacy.* All processing runs locally on-device (quantized model, on-device inference via llama.cpp or similar). No patient text leaves the device. This is essential: crash diaries may contain sensitive health information.

*Languages.* The primary corpus is English, but the model architecture supports fine-tuning in any language. ME/CFS is a global disease; multi-language support is a priority.

== Limitations

#limitation[
*Training data scarcity.* No labeled corpus of crash descriptions with ground-truth PEM parameters exists. Creating one requires annotating hundreds of crash descriptions, which is labor-intensive and requires clinical expertise for parameter annotation.

*NLU accuracy.* Free-text crash descriptions vary enormously in style, detail, and reliability. Severity inference and recovery pattern detection from qualitative descriptions are inherently noisy. The tool must report confidence alongside each extracted parameter.

*Prompt dependence.* Patients may omit critical details (trigger time, symptom onset time) that the model needs. The bot can prompt for missing information ("What time did the symptoms start?") but this adds interaction burden.

*Severe patient accessibility.* Even a messaging bot requires screen interaction, which may exceed the capacity of very severe patients. Voice-to-text input (speaking the crash description) could reduce this burden but adds ASR error as another noise source.
]

== Consequence

#key-point[
The crash diary NLP analyzer converts the natural behavior of journaling — something patients already do — into structured diagnostic signal. It eliminates the data-entry burden that prevents severe patients from using structured tracking tools. Combined with the PEM shape decomposition framework, it creates a zero-friction diagnostic pathway: the patient writes about their experience, the system returns insight about their mechanisms.
]
