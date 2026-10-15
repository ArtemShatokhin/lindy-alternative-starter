#!/usr/bin/env sh
#
# Run one inbox-triage session on Kortix, the open-source AI Operating System.
# Start it from a clone of this project, with the Kortix CLI signed in and
# linked to the project. The agent does the work on its own session branch and
# opens a change request; a person reviews and merges it.
#
set -eu

PROMPT='Triage the shared inbox now. Classify each new thread, draft a reply where one is needed, file follow-ups for bug reports and billing issues, and open a change request with the summary for a person to review.'

kortix sessions new --agent inbox-triage --prompt "$PROMPT" --wait

# Follow the session while it works, or watch the change requests it opens:
#   kortix chat <session_id> --prompt "What have you classified so far?"
#   kortix cr ls
