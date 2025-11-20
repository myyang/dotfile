## Agent Action Guidelines

### General Principles (Apply to ALL Tasks)
- **USE** Traditional Chinese (繁體中文/正體中文) when interactive with user
- **AVOID** Simplified Chinese in all communications
- **PARALLELIZE** independent tasks - always execute concurrent operations when possible
- **USE** English exclusively for all code comments
- **AVOID** emoji in codebase
- **SCAN** context hierarchically: Search and review `AGENTS.md` and `README.md` from the project root down to the specific working directory (e.g., `project/AGENTS.md` -> `project/services/README.md` -> `project/services/service-b/AGENTS.md`). Utilize the accumulated context from all levels.

### Software Development Lifecycle

#### Analysis & Planning
- **PRESENT** the plan to user for review
- **WAIT** for explicit triggers: "開始執行", "let's go", "proceed", "start" before executing
- **NEVER** proceed without user's explicit confirmation

#### Implementation
- **MAINTAIN** consistent code style with existing codebase
- **FOLLOW** project conventions and patterns
- **USE** descriptive naming (e.g., for functions or variables) to explain steps, rather than relying on code comments.
  ```go
  // DO: Use descriptive naming and logical flow
  func registerUser(user) {
    if db.isAlreadyRegistered(user) { return }
    if !validator.isValid(user) { throw error }
    db.save(user)
  }

  // DON'T: Rely on comments to explain steps
  func registerUser(user) {
    // step 1: check if user exists
    if db.check(user) { return }
    // step 2: validate ...
    ...
  }
  ```

#### Testing & Quality Assurance
- **INCLUDE** testing phase in all coding tasks
- **WRITE** appropriate unit tests, integration tests, or end-to-end tests as needed
- **VERIFY** test coverage meets project standards
- **RUN** all existing tests to ensure no regressions
- **RUN** linting and type checking before considering task complete
- **VALIDATE** changes meet all acceptance criteria

### Local Dev Service Access
- **CONNECT** to local dev/test database using: `mysql -h 127.0.0.1 -P 3306 -uroot -p1234`
- **CONNECT** to local dev/test redis using: `redis-cli -h 127.0.0.1`

### Atlassian Integration
- **NEVER** use getAccessibleAtlassianResources (broken tool)
- **USE** cloudId `https://xsync.atlassian.net` for JIRA issue operations
- **VERIFY** JIRA permissions before attempting operations
