# COMP2211 Networks and Systems - Cyber Security

## Lecture 1 - Intro

> *Computer security is the protection of computer systems against adversarial environments.*

In CyberSec, we aim to **allow intended use** and **prevent unintended use**. We adopt a **Red vs Blue** mindset - attacker vs defender. We must constantly be on the lookout for exposed vulnerabilities and assume attackers may want to exploit them, even if the exploits seem counter-intuitive. We must think from both perspectives to secure our systems.

## Basic Terminology

Word            | Meaning
--              |--
Asset           | Something of **value** to a person or organisation.
Vulnerability   | **Weakness** of a system that could be accidentally or intentionally **exploited** to damage assets.
Threat          | **Potential danger** of an adversary exploiting a vulnerability.
Risk            | Asset x Threat x Vulnerability.
Adversary       | An **agent** that circumvents the security of a system.
Attack          | An **assault** on system security.
Countermeasure  | Actions/processes that an owner may take to **minimize risk** of a vulnerability.
Confidentiality | Ensuring assets are **only available** to those who should be **allowed**.
Integrity       | Ensuring **consistency**, **accuracy** and **trustworthiness** of data.
Availability    | Ensuring that assets are **always available** (e.g. in the event of an attack).
Accountability  | **Recording actions** so that users can be held **accountable** for their actions.
Reliability     | Ensuring that a system can **progress despite errors**.

**Confidentiality, integrity and availability** often have to be balanced against one another. Too much confidentiality might harm availability and integrity, etc.

## Lecture 2 - Applied Cryptography

> *Cryptology is the study and practice of techniques for secure communication in the presence of adversaries. It is split into cryptography, writing codes, and cryptanalysis, deciphering codes.*

### Substitution Ciphers

Replace each letter in the alphabet by another letter. ROT$_{k}$ is the most basic - shifting alphabet by $k$ letters.

Multiple variants - monoalphabetic = fixed sub, polyalphabetic = change sub rules in different parts of message (eg. every 4 letters), polygraphic

### Approaches

Symmetric and asymmetric (public) key cryptography. Symmetric = same keys, public = different keys.

Public key used for encryption, private key for decryption.

Key-space and cipher-space

Avoid using pseudorandom numbers to generate keys.

## Lecture 3 - OS Security and Access Control

### In-lecture comments

MAC and DAC are non-examinable terms

## Lecture 4 - Identification, authentication, authorization.
lmao catch up on this one 😭
### ILC

## Lecture 5 - Network and Web Security

### ILC

Star network topology usually more secure against man in the middle eavesdropping attacks than topologies like Bus

BGP is too trusting and very insecure - fundamental design flaw of the internet



## Lec 8 - 

## Lec 9 - 

Data oriented programming - as opposed to OOP, you separate the data from the system and think about transforming the data and how this should be done, rather than abstracting into objects and classes etc.

DRAM v SRAM - slow and cheap v fast and expensive (see CSys)

GPUs are not well optimised or secured, at least compared to CPUs