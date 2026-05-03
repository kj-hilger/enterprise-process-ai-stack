# Enterprise Process AI Stack 🚀

The **Enterprise-Process-AI-Stack** is a reference architecture designed for highly regulated industries. It demonstrates how **Deterministic Orchestration meets Intelligent Execution** by bridging the gap between traditional BPMN and autonomous AI agents.

---

*   **Status:** 🚧 Work in Progress
*   **Goal:** Demonstrating secure, scalable, and auditable AI orchestration using an **"Adaptive Case Management 2.0"** approach with 100% data sovereignty.

## 🎯 Target Architecture

This project showcases the integration of traditional process governance with modern Agentic AI, optimized for local or air-gapped environments to ensure maximum security.

![Target Architecture](docs/architecture/target_architecture.png)

### Key Pillars:
*   **Orchestration:** **Camunda 8 Self-Managed** (Zeebe Engine) provides the deterministic backbone and **full audit trails** for every AI decision – a hard requirement for compliance.
*   **Agentic AI:** Utilization of **Ad-Hoc Subprocesses** as AI Connectors. This allows the agent to flexibly choose between Service Tasks (Tools) and Human Tasks (Escalation).
*   **Data Sovereignty:** Local LLM inference via **LM Studio**, ensuring sensitive request data never leaves the controlled environment.
*   **Security-First:** Centralized Identity Management via **Keycloak (OIDC)**, securing all endpoints and the Camunda stack.

## 📋 Featured Use Case: "Request Processing"

The stack is demonstrated through a universal **Request Processing** workflow. It handles the lifecycle of a digital application where an AI Agent autonomously manages missing information or document validation within a governed BPMN sub-flow, escalating to humans only when necessary. This ensures that even "creative" AI steps remain within a compliant, trackable framework.

## 🏗️ Technical Stack

| Category | Technology |
| :--- | :--- |
| **Backend** | Java 21, Spring Boot 3.x, Zeebe Java Client (Worker Pattern) |
| **BPMN / DMN** | Camunda 8 (Zeebe), modeled with Camunda Desktop Modeler |
| **AI Orchestration** | Camunda Agentic AI Connector (Native Integration) |
| **Storage & Data** | OpenSearch (Analytics Sink) |
| **Security** | Keycloak (OIDC), OAuth2 |
| **Local AI** | LM Studio (OpenAI-compatible API / GGUF) |

## ⚖️ Architectural Evaluation: Why no Spring AI?

During the design phase, **Spring AI** was evaluated but deliberately excluded to reduce architectural redundancy:
*   **Native Orchestration:** By using Camunda’s native Agentic AI capabilities, the orchestration logic stays within the BPMN model (Single Source of Truth) instead of being hidden in Java code.
*   **Auditability:** Standardizing on the Camunda Connector ensures that "thoughts" and "tool calls" of the agent are natively logged in Zeebe/Operate for compliance audits.
*   **Process Transparency:** Non-technical stakeholders can see the agent's decision paths in the BPMN diagram rather than having to parse application logs.

## 🗺️ Roadmap

- [ ] **Phase 1:** Core Container Infrastructure (Minikube & Helm)
- [ ] **Phase 2:** Keycloak Identity Provider & OIDC Integration
- [ ] **Phase 3:** Camunda 8 Self-Managed Deployment
- [ ] **Phase 4:** Java Job Workers (Business APIs) & Agentic AI Connector Setup
- [ ] **Phase 5:** Analytics Integration (OpenSearch Data Sink)

---

Visuals created with Google Gemini.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.