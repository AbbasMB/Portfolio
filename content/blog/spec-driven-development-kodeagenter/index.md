---
title: "Spec-driven development med kodeagenter"
date: 2026-05-25
draft: false
tags: ["Udvikling", "AI", "Kodeagenter", "Spec-driven development"]
---

# Spec-driven development med kodeagenter

## Emnet

Spec-driven development handler om at beskrive, hvad man vil bygge, før man begynder at skrive selve koden.

En spec kan for eksempel beskrive funktioner, regler, brugerflow, API-endpoints og krav til systemet. I stedet for bare at starte med at kode, prøver man først at gøre opgaven tydelig.

Det minder lidt om at lave en plan, men en spec er mere konkret. Den skal kunne bruges som reference, når man udvikler, tester og vurderer om løsningen faktisk gør det, den skal.

## Hvorfor er det nyttigt?

Det er nyttigt, fordi mange fejl i projekter starter med uklare krav.

Hvis man ikke helt ved, hvad en feature skal kunne, bliver koden også sværere at skrive. Man kan ende med at bygge noget, der teknisk virker, men som ikke løser den rigtige opgave.

Med en spec får man et fælles udgangspunkt. Det gør det nemmere at svare på spørgsmål som:

1. Hvad skal brugeren kunne gøre?
2. Hvilke regler skal systemet følge?
3. Hvad skal ske, hvis noget går galt?
4. Hvordan ved vi, at løsningen er færdig?

Spec-driven development kan derfor gøre udviklingen mere struktureret og mindske misforståelser.

## Hvor kan man bruge det?

Man kan bruge specs i mange typer softwareprojekter.

Det kan for eksempel være:

1. Når man bygger en ny feature.
2. Når man laver et API.
3. Når man arbejder med brugerflows.
4. Når man skal beskrive regler i backend.
5. Når man bruger kodeagenter til at hjælpe med udvikling.

Jeg kunne især forestille mig at bruge specs sammen med kodeagenter. Hvis en kodeagent får en tydelig spec, har den bedre mulighed for at forstå målet og lave ændringer, der passer til projektet.

For eksempel kunne en spec beskrive, hvordan en indkøbsliste i Engestofte Gods Logistics skal fungere. Agenten kan derefter bruge spec'en til at finde de rigtige filer, bygge funktionen og køre relevante checks.

## Hvad har jeg lært?

Jeg har lært, at kodeagenter fungerer bedst, når opgaven er tydeligt beskrevet.

Hvis man bare skriver "lav denne feature", kan agenten være nødt til at gætte for meget. Hvis man i stedet giver den en spec med krav, regler og forventet adfærd, bliver resultatet mere præcist.

Jeg synes også logs kan spille en vigtig rolle sammen med specs. Specs fortæller, hvad systemet burde gøre. Logs viser, hvad systemet faktisk gjorde.

Det kan bruges på flere måder:

1. Agenten kan læse logs for at forstå en fejl.
2. Agenten kan sammenligne logs med spec'en.
3. Agenten kan foreslå en rettelse ud fra forskellen.
4. Udvikleren kan reviewe både ændringen og forklaringen.

På den måde bliver specs og logs to forskellige kilder til viden. Spec'en beskriver intentionen, og logs viser virkeligheden.

## Konklusion

Spec-driven development handler for mig om at gøre udviklingsarbejdet mere tydeligt, før man går i gang med koden.

Når man kombinerer specs med kodeagenter, kan agenten arbejde mere målrettet. Den får ikke bare en løs opgave, men en konkret beskrivelse af hvad der skal bygges.

Logs kan samtidig hjælpe med at vise, hvordan systemet faktisk opfører sig. Det gør det nemmere at finde fejl og rette dem på en kontrolleret måde.

Min konklusion er, at specs, logs og kodeagenter passer godt sammen. Specs giver retning, logs giver feedback, og kodeagenten kan hjælpe med at omsætte det til ændringer i koden.
