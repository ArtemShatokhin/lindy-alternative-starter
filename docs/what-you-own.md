# What you own when you run Kortix yourself

Kortix is the open-source AI Operating System, and this example is built so a team can keep the whole system rather than rent it. Owning it is four decisions: the files, the place it runs, the model path, and the gate that lands work. Each one moves something off a vendor's side of the line and onto yours.

## The files

A Kortix project is a git repo with `kortix.yaml` at its root. That file declares the agents and what each one may reach, plus the triggers, connectors and secret names of the project. Agents are `agents/<name>.md` files paired with a governance block in `kortix.yaml`, so an agent's behavior and its permissions sit next to each other in the same version control. Skills, company memory and connector configuration are files in the same repo. You can read the whole setup, diff it, and fork it.

This repository is that repo in miniature. `kortix.yaml` governs the `inbox-triage` agent and grants it the `gmail` and `linear` connectors, `agents/inbox-triage.md` holds its prompt, and the trigger that runs it is a few lines in the same manifest, so nothing about the setup lives only in a dashboard.

## Where it runs

The same project runs on Kortix Cloud, in your VPC, or on your own on-prem network, and self-host is free. The `kortix self-host` command family installs and runs the full stack on infrastructure you control. A self-hosted instance ships no managed models, so each project adds its own model key, and the instance directory holds the compose file, the environment file, the database volumes and the stored files. Back up that directory and you have backed up the instance.

Two product behaviors hold on your own infrastructure as they do on the managed cloud. Connector credentials are brokered server-side and never enter the machine, so a sandbox does not hold them. Model choice stays yours through your own keys.

## The model path

Any model provider works with your own keys. You can also bring the ChatGPT plan you already pay for, or sign in with an OpenCode Console account. The model decision is a setting on the project, not a feature the platform withholds, so a self-hosted instance and a cloud project have the same options. When a team already pays for model access, that spend does not get repriced by the agent layer.

## The change-request gate

Owning the system also means owning who lands changes. An agent does its work on its own session branch and opens a change request against the default branch. Merge is default-deny for agents, so the review is real: a person reads the diff and merges, and a session can never merge a change request it opened itself. The one exception is an agent an admin granted `project.gitops.merge`, which is why this example leaves that permission out of the `inbox-triage` grants.

Approval gates work the same way. You set allow, ask or block on each connector action, and the gates are off until you set them. This example sets Gmail reads to run and everything with an outside effect, a draft or an issue, to ask first. Every action is recorded in the audit log, and reading, exporting or streaming that log depends on the plan.

## What this example already puts on your side

- The agent, its prompt and its grants, as files in a repo you own.
- The connectors and their policies, in `kortix.yaml`.
- The schedule that runs the agent, in the same manifest.
- The model path, through your own keys.
- The landing rule, through a change request a person merges.

The comparison with a hosted teammate is in [Lindy vs owned Kortix](lindy-vs-owned-kortix.md). The runbook is in the [README](../README.md).
