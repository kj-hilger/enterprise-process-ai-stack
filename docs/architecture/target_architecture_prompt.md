# TASK: Generate Technical Architecture Diagram
**Style:** Professional Engineering Blueprint
**Visuals:** Strict Black & White, 2D Flat Design, Monochrome, High Resolution

---

## 1. CENTRAL COMPONENT: BPMN POOL
- **Structure:** Horizontal rectangular Pool with a solid black border.
- **Header:** Vertical bar on the far left labeled "Request Processing".
- **Internal Flow:**
  - START: Small circle (Start Event).
  - CONNECTION: Arrow leading to a dashed-border box.
  - CORE: Box labeled "~ Ad-Hoc Subprocess (AI Connector)".
  - TOOLS: Inside the box, show icons for 'Service Task' (gears) and 'Human Task' (user).
  - END: Arrow leading to a bold small circle (End Event).

## 2. RIGHT PILLAR: EXECUTION & DATA
- **Container:** Solid, closed rectangular box labeled "Execution & Data".
- **Components (3 separate closed boxes inside):**
  - [LLM] labeled "LM Studio / LLM" (with Brain/AI icon).
  - [API] labeled "Business APIs" (with Server icon).
  - [DB] labeled "OpenSearch" (with subtitle "Process Analytics / Data Sink").
- **Logic:**
  - Bold arrow from 'AI Connector' (Pool) to 'LM Studio' labeled "Prompting".
  - Dotted arrow from 'Pool' area (Camunda 8) to 'OpenSearch' labeled "Data Export".

## 3. LEFT PILLAR: IDENTITY
- **Container:** Closed box labeled "Identity".
- **Icons:** 'Browser' and 'Keycloak' shield icon.
- **Connection:** Arrow pointing towards the BPMN Pool header.

## 4. FOOTER: INFRASTRUCTURE
- **Container:** Wide, fully closed horizontal box at the bottom.
- **Label:** "Infrastructure" (placed in the top-left corner of the box).
- **Logos & Labels (Horizontal Row):**
  - Minikube | Kubernetes | Helm | ArgoCD

---

## TECHNICAL CONSTRAINTS
- **Typography:** Professional Sans-Serif (Inter/Arial), high legibility.
- **Lines:** Solid black lines on pure white background, no gradients, no shadows.
- **Integrity:** All outer container borders MUST be fully closed.