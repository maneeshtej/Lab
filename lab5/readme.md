Perfect — here’s your **complete `README.md`** for **Lab Program 5: Bean Configuration and Management**.
It follows the same format as Lab 4, with **setup steps, run commands (with & without `run.sh`)**, debugging tips, and what to do after `git pull`.

---

## 🧩 `README.md`

```markdown
# LAB PROGRAM 5 — Bean Configuration and Management

This program demonstrates **Spring Bean Configuration and Management** using **Spring Core (without Spring Boot)**.

It shows how to define and manage **beans**, their **lifecycle methods**, **scopes**, and **dependencies** using annotations and Java-based configuration.

---

## 📘 Concept Overview

| Concept                  | Description                                                             |
| ------------------------ | ----------------------------------------------------------------------- |
| **Bean Definition**      | Beans are defined in a `@Configuration` class using `@Bean`             |
| **Lifecycle Methods**    | `initMethod` and `destroyMethod` run when the bean is created/destroyed |
| **Scope**                | The `@Scope("singleton")` ensures only one instance of a bean exists    |
| **Dependency Injection** | Beans can depend on other beans (via constructor injection)             |
| **Bean Management**      | Spring’s `ApplicationContext` manages bean creation and destruction     |

---

## 🧩 Project Structure
```

lab5/
│
├── pom.xml
├── run.sh
└── src/
└── main/
└── java/
└── lab5/
├── AppConfig.java
├── BeanInjection.java
├── DependentBean.java
└── MyBean.java

````

---

## 🧠 What Happens When You Run It

1. Spring loads configuration from `AppConfig.java`
2. It creates a **singleton** bean `MyBean` with lifecycle methods
3. It injects `MyBean` into `DependentBean`
4. Both beans perform their respective work
5. When context closes, destruction logic executes

---

## ⚙️ Prerequisites

Ensure you have the following installed:
- **Java 17 or newer**
- **Apache Maven 3.8+**
- Works on **Linux** or **macOS**

Check:
```bash
java -version
mvn -v
````

---

## 🚀 Running the Project

### ✅ Option 1 — Run using `run.sh`

Simple automatic execution:

```bash
./run.sh
```

What it does:

1. Verifies Java & Maven
2. Compiles the project
3. Executes the main class (`lab5.BeanInjection`)

---

### ✅ Option 2 — Run manually (without script)

1. **Clean and compile**

   ```bash
   mvn clean compile
   ```

2. **Run the main class**

   ```bash
   mvn exec:java -Dexec.mainClass="lab5.BeanInjection"
   ```

---

## 🔄 After `git pull`

When cloning or pulling the repo:

```bash
git clone <your_repo_url>
cd lab5
chmod +x run.sh
./run.sh
```

If code changes:

```bash
mvn clean compile
```

---

## 🧾 Example Output

```
MyBean: Constructor called
MyBean: Initialization logic
MyBean: Working...
DependentBean: Using MyBean to perform task.
MyBean: Working...
MyBean: Destruction logic
```

---

## 🧩 Explanation of Output

| Line                   | Meaning                                 |
| ---------------------- | --------------------------------------- |
| `Constructor called`   | Spring instantiated `MyBean`            |
| `Initialization logic` | The `initMethod` (`init()`) was called  |
| `Working...`           | `doWork()` was executed from both beans |
| `Destruction logic`    | Bean was destroyed when context closed  |

---

## 🧠 Key Learnings

- **@Bean** defines beans manually in configuration classes
- **initMethod / destroyMethod** handle bean lifecycle
- **@Scope("singleton")** controls instance creation
- **Dependency injection** connects beans automatically
- **context.close()** triggers cleanup and destruction

---

## 🧩 Debugging Tips

### 1. Maven not found

```
bash: mvn: command not found
```

→ Install Maven
**Ubuntu/Debian:**

```bash
sudo apt install maven -y
```

**Mac (Homebrew):**

```bash
brew install maven
```

---

### 2. Java version mismatch

```
Source option 17 is no longer supported.
```

→ Check version:

```bash
java -version
```

If <17:

```bash
sudo apt install openjdk-17-jdk -y
```

---

### 3. Class/package not found

→ Ensure folder structure is:

```
src/main/java/lab5/*.java
```

and you’re running from `lab5/` root.

---

### 4. “No qualifying bean of type found”

→ Check that your `@Bean` or `@Component` annotations match the package being scanned:

```java
@ComponentScan("lab5")
```

---

### 5. Destruction not shown

→ Ensure you close the context:

```java
context.close();
```

---

## 🧩 Optional Verification

You can add this before running to verify environment:

```bash
chmod +x run.sh
./run.sh
```

---

## 🏁 Summary

This program demonstrates:

- How Spring **creates**, **manages**, and **destroys** beans
- How to define beans with **init/destroy methods**
- How to manage bean **scope** and **dependencies**

---

**Author:** Your Name
**Course:** Java / Spring Framework — Bean Configuration and Management
**Lab:** Program 5

```

---

Would you like me to also give a **short printable lab report format** (Aim, Code, Output, Result) version for submission?
```
