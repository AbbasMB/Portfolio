---
title: "Engestofte Gods Logistics: Mine overvejelser før projektet"
date: 2026-05-25
draft: false
tags: ["Udvikling", "AI", "Flask", "React"]
---

# Engestofte Gods Logistics: Mine overvejelser før projektet

## Emnet

Det projekt jeg gerne vil kaste mig over, er Engestofte Gods Logistics.

Projektet handler om at lave et logistiksystem til Engestofte Gods, som kan hjælpe med planlægning af bryllupper og ophold. Når der er mange gæster, værelser og praktiske ting at holde styr på, kan det hurtigt blive svært at bevare overblikket.

Min ide er at bygge et system, hvor man kan oprette et arrangement og få beregnet, hvilke varer der skal bruges. Systemet skal derefter sammenligne behovet med lageret og vise, hvad der skal købes ind.

## Hvorfor er det nyttigt?

Det er nyttigt, fordi planlægning af arrangementer ikke kun handler om datoer og gæster. Der er også en masse praktiske ting bag kulissen.

Hvis man for eksempel skal gøre værelser klar til overnattende gæster, skal der være styr på sengetøj, håndklæder, toiletartikler, rengøring og eventuelt minibar.

Hvis det hele ligger i forskellige noter eller regneark, kan det være svært at se, hvad der mangler. Et samlet system kan gøre processen mere overskuelig og mindske risikoen for fejl.

## Hvor kan man bruge det?

Systemet kan bruges af personalet på Engestofte Gods, når de skal planlægge et arrangement med overnatning.

Første version skal fokusere på en enkel arbejdsgang:

1. Brugeren indtaster oplysninger om arrangementet.
2. Systemet beregner behovet for varer.
3. Lageret sammenlignes med behovet.
4. Der vises en indkøbsliste.

Jeg vil holde scope forholdsvis lille i starten. Brugerlogin, bookingintegrationer og avanceret historik kan komme senere, men de er ikke nødvendige for at vise projektets kerne.

## Hvad har jeg lært?

Allerede i planlægningen har jeg lært, at teknologivalg skal passe til problemet.

Jeg vil bruge React til frontend, fordi brugerfladen skal være interaktiv med formularer, lister og statusmarkeringer. Til backend giver Flask mening, fordi det er simpelt at bygge et REST API og placere beregningslogikken der.

Jeg har også lært, at AI skal bruges med omtanke. Selve beregningen af indkøbslisten skal være regelbaseret, fordi tallene skal være præcise. AI kan i stedet bruges som en assistent, der forklarer listen eller hjælper med at formulere beskeder.

## Konklusion

Engestofte Gods Logistics er et projekt, hvor jeg kan arbejde med både frontend, backend, data og AI på en praktisk måde.

Det vigtigste for mig er at holde løsningen realistisk. Første version skal ikke kunne alt. Den skal løse den centrale opgave: skabe overblik over behov, lager og indkøb.

Hvis den del fungerer godt, kan projektet senere udvides med flere funktioner.
