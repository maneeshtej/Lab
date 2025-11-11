Perfect — here’s a **complete `README.md`** you can drop straight into your `lab4/` folder.
It includes setup, run instructions (with and without `run.sh`), what to do after `git pull`, and **debugging tips** for Mac and Linux.

---

## 🧩 `README.md`

```markdown
# Spring Dependency Injection Demo (Java + Maven)

This project demonstrates **Dependency Injection (DI)** in Java using **Spring Core (no Spring Boot)**.

It shows how Spring automatically injects dependencies (`EmailService` or `SMSService`) into another class (`NotificationService`) without manual instantiation.

---

## 📘 Concept Overview

| Concept                       | Description                                                                  |
| ----------------------------- | ---------------------------------------------------------------------------- |
| **Dependency Injection**      | Objects (beans) are automatically created and supplied to dependent classes. |
| **Loose Coupling**            | Classes depend on interfaces, not concrete implementations.                  |
| **Spring Annotations**        | `@Component`, `@Service`, `@Configuration`, `@ComponentScan`, `@Qualifier`   |
| **Automatic Bean Management** | Spring’s ApplicationContext manages object creation and wiring.              |

Example output:
```

📱 SMS sent to [user@example.com](mailto:user@example.com) with message: Hello, World!

```

---

## 🧩 Project Structure

```

lab4/
│
├── pom.xml
├── run.sh
├── check-env.sh
└── src/
└── main/
└── java/
└── lab4/
├── AppConfig.java
├── DependencyInjectionApplication.java
├── EmailService.java
├── MessageService.java
├── NotificationService.java
└── SMSService.java

````

---

## 🧠 What Happens When You Run It

1. Spring scans the `lab4` package (via `@ComponentScan`)
2. It detects all `@Service` and `@Component` classes
3. It creates and injects the appropriate dependency (`SMSService` or `EmailService`)
4. The app sends a test message and prints the output.

---

## ⚙️ Prerequisites

Make sure you have:
- **Java 17 or newer**
- **Apache Maven 3.8+**
- **Linux / macOS terminal**

To verify:
```bash
java -version
mvn -v
````

---

## 🚀 Running the Project

### ✅ Option 1 — Run using `run.sh`

The simplest way (automated build + run):

```bash
./run.sh
```

What it does:

1. Checks Java and Maven
2. Builds the project
3. Runs `DependencyInjectionApplication`

Expected output:

```
📱 SMS sent to user@example.com with message: Hello, World!
```

---

### ✅ Option 2 — Run manually (without `run.sh`)

1. **Clean and compile**

   ```bash
   mvn clean compile
   ```

2. **Run the main class**

   ```bash
   mvn exec:java -Dexec.mainClass="lab4.DependencyInjectionApplication"
   ```

---

## 🔄 After `git pull`

When you clone or pull the repo for the first time:

```bash
git clone <your_repo_url>
cd lab4
chmod +x run.sh check-env.sh
./check-env.sh   # optional environment check
./run.sh
```

> If you add or modify `.java` files, re-run:
>
> ```bash
> mvn clean compile
> ```

---

## 🧩 Switching Between Email and SMS Service

To switch between them, open:

```
src/main/java/lab4/NotificationService.java
```

Change:

```java
@Qualifier("smsService")
```

to:

```java
@Qualifier("emailService")
```

Then rebuild and run again.

---

## 🛠️ Debugging Tips

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

→ Check your Java version:

```bash
java -version
```

If it’s < 17, install a newer one:

```bash
sudo apt install openjdk-17-jdk -y   # Linux
brew install openjdk@17              # macOS
```

---

### 3. “Class not found” or “package lab4 does not exist”

→ Ensure you are inside the **project root (`lab4/`)** before running `mvn`.
Also confirm your folder structure matches:

```
src/main/java/lab4/*.java
```

---

### 4. “Could not find or load main class”

→ Make sure you compiled first:

```bash
mvn clean compile
```

and are using:

```bash
mvn exec:java -Dexec.mainClass="lab4.DependencyInjectionApplication"
```

---

### 5. “No qualifying bean” error

→ Check your `@Qualifier` name matches the `@Service("...")` name exactly
(e.g. `smsService` vs `emailService`).

---

## 🧩 Optional Verification

Run the environment check script manually:

```bash
./check-env.sh
```

It will confirm:

- Java installed
- Maven installed
- Correct versions

---

## 🧾 Example Output

```
=== Spring DI Runner ===
Java version:
openjdk version "17.0.11"

Maven version:
Apache Maven 3.9.6

Running Spring Dependency Injection Application...
----------------------------------------------
📱 SMS sent to user@example.com with message: Hello, World!
----------------------------------------------
✅ Done!
```

---

## 🏁 Summary

- Demonstrates **Spring Dependency Injection**
- No Spring Boot needed
- Fully portable across Mac & Linux
- Simple and clear for lab or project submissions

---

**Author:** Your Name
**Course:** Java / Spring Framework — Dependency Injection

```

---

Would you like me to make a **shorter “student lab report” version** of the same README (summary, purpose, output, conclusion) formatted for submission?
```
