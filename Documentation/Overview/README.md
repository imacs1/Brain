/*
 * =====================================================================
 * File:         README.md
 * Folder:       Documentation/Overview
 * Description:  Quick reference guide for new developers working on 
 *               Project Brain, covering key concepts, workflows, 
 *               and tools.
 * Author:       Michael G. Lustig
 * Created On:   2024-12-30 14:30:00 UTC
 * Last Updated By: Michael G. Lustig
 * Last Updated: 2024-12-30 14:30:00 UTC
 * Version:      1.0
 * Copyright:    (c) 2024 Editoza, LLC - All rights reserved.
 * =====================================================================
 */

# System Cheat Sheet: Project Brain

## 1. Core Concepts

### Data-Driven Design
- **Actions**: Small, focused operations (e.g., `Translate`, `Summarize`).
- **Messages**: Communication units (e.g., `MSG_TRANSLATE`, `MSG_SUMMARIZE`).
- **Workflows**: Chain of actions or sub-workflows (e.g., `Summarize_And_Translate`).

### Dynamic Routing
- No hardcoded logic for actions, messages, or workflows.
- Uses reflection to build routing tables dynamically at startup.

### Context Management
- **Neo4j**: Manages dynamic contexts, speculative workflows, and dependencies.
- Supports branching and merging of workflows.

### Role-Based Access Control (RBAC)
- Access permissions are enforced at multiple levels:
  - Actions, workflows, services, and templates.

### Real-Time Features
- **Message Prioritization**: Prioritize tasks by urgency and user entitlement.
- **Proactive Monitoring**: Heartbeat and fault detection for services.

---

## 2. Folder and File Organization

### Backend
- **Core**: Actions, messages, workflows, routing, and context handling.
- **Services**: Specialized services (e.g., `Logger`, `Manager`, `Simulator`).
- **Libraries**: Utilities, encryption (LibSodium), and storage (PostgreSQL).

### Frontend
- **ConsoleUI**: CLI interface for monitoring and management.
- **WebUI**: Placeholder for future graphical interface.

### Config
- JSON files for defining actions, messages, workflows, and services.

### Docs
- Detailed documentation for every folder and feature.

---

## 3. Tools and Dependencies

- **Neo4j**: For graph-based context and workflow management.
- **PostgreSQL**: For user accounts, RBAC policies, and structured data.
- **LibSodium**: Ensures encrypted configuration and secure message handling.
- **gRPC**: Enables cross-language communication (e.g., Python-based AI).

---

## 4. Developer Workflow

### Step 1: System Setup
1. Clone the repository from Git.
2. Install Neo4j and PostgreSQL.
3. Configure JSON files in `Config/`.

### Step 2: Run the System
1. Start backend services (use the `Manager` service).
2. Launch the `ConsoleUI` for interactive management.

### Step 3: Debugging
1. Check logs in `Backend/Services/Logger/Logs/`.
2. Use the ConsoleUI for monitoring and troubleshooting.

### Step 4: Adding New Features
1. **Actions**:
   - Add a handler in `Core/Actions`.
   - Update routing tables via JSON or automatic reload.
2. **Messages**:
   - Define in `Core/Messages` and configure in JSON.
3. **Workflows**:
   - Chain actions using templates in `Core/Workflows`.

---

## 5. Quick Commands

### Common Tasks
- Start services: Use the `ConsoleUI` menu.
- Reload routing tables: `Config/Global` updates trigger auto-refresh.
- Monitor health: Check `Backend/Services/Monitor`.

### Important Paths
- **Logs**: `Backend/Services/Logger/Logs/`
- **Configurations**: `Config/`
- **Neo4j DB**: `http://localhost:7474`

---

## 6. Debugging Tips

- **Service Not Responding**:
  - Check if the service is running (`Manager` service logs).
  - Verify the heartbeat status (`Monitor` service).
- **Routing Issues**:
  - Confirm actions/messages/workflows are properly defined in JSON.
  - Check dynamic routing tables in `Core/Routing`.

---

## 7. Testing Framework

- Functional, integration, and unit tests located in `Tests/`.
- Use `TestService` for live service diagnostics.

---

## 8. Core Principles

1. Data-Driven: No hardcoded logic.
2. Modular: Easy to extend or replace components.
3. Secure: Encrypted data and audit trails using GUIDs.
4. Scalable: Dynamic scaling for bottleneck resolution.
5. Cross-Platform: Works seamlessly on Linux, Windows, and macOS.

---

#End of file
