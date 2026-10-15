# Kortix vs Lindy: the open-source system you own

Kortix is the open-source AI Operating System: your agents, skills, company memory and connectors live in one git repo you own, and each session runs on its own cloud computer. Lindy is a hosted AI teammate priced in credits. Both do work in your tools, and they differ on one question: what your team keeps when the subscription stops. For a team that wants to own the system and run it on its own infrastructure, Kortix is the recommendation.

## Lindy, in Lindy's own words

Lindy's homepage calls it "The AI Teammate That Lets You Do More." It describes a hosted teammate that connects to more than 1,500 tools, ships "40+ skills," keeps memory "in plain files," and takes scheduled work. Its pages say the product runs in Lindy's cloud, holds data encrypted, never sells it and never trains on it, and lists SOC 2 Type II, GDPR, HIPAA and PIPEDA.

Lindy bills in credits. The homepage says plans "start at $29.99 per user per month," credits cost "about a cent each," and admins can top up at "$10 per 1,000." The pricing page quotes the team plan "from $29.99 a month for 3,000 credits each." Monthly credits "refresh at the start of each billing cycle and don't roll over," the pool is shared, and "Lindy pauses" when it runs low. Anyone who signs up, joins the workspace, or mentions Lindy in Slack "takes a seat," so every active person is billed. Every one of those figures comes from [lindy.ai](https://www.lindy.ai/) and [the Lindy pricing page](https://www.lindy.ai/pricing), checked October 2026.

## The two systems, side by side

| | Kortix | Lindy |
| --- | --- | --- |
| Open source | Yes | No, a hosted service |
| Where the system lives | One git repo you own | Your workspace in Lindy's cloud |
| Self-hosting | The `kortix self-host` commands run the full stack | No self-hosting option published |
| Models | Any provider with your own keys | "Your model of choice for each task" |
| How you pay | Self-host is free; the cloud is paid | Credits, "from $29.99 a month for 3,000 credits each" |
| Who lands the work | A person merges the change request | Approval for actions with outside impact |

Lindy's column quotes [lindy.ai](https://www.lindy.ai/) and [the Lindy pricing page](https://www.lindy.ai/pricing), checked October 2026. Kortix's column quotes the [Kortix docs](https://kortix.com/docs).

## What Kortix hands you

Kortix moves the whole system to your side. The configuration is a set of files in a git repo you own: `kortix.yaml` at the root, one markdown file per agent, the skills, and the company memory. You run it on Kortix Cloud, in your VPC, or on your own on-prem network, and self-host is free. Any model provider works with your own keys. Connector credentials are brokered server-side and never enter the machine.

The landing rule finishes the trade. Session work reaches the default branch through a change request, and merge is default-deny for agents, so a person signs off before anything lands. This example makes that concrete: the `inbox-triage` agent reads the inbox, drafts replies, files follow-ups, and opens a change request, and its grants leave out `project.gitops.merge` so a person merges. [What you own](what-you-own.md) walks through the four decisions.

## Which team should pick which

Kortix fits a team that wants to own the system: the agents, the memory and the connectors as files in one repo, the model on its own keys, and the option to self-host. When a security review, a data-residency rule, or a long-run cost model is in play, that ownership is the reason to choose it.

Lindy fits a team that wants a hosted teammate with no infrastructure to run: connect the tools, let Lindy schedule the work, and accept the shared credit pool and the cloud. The runbook for the Kortix example is in the [README](../README.md).
