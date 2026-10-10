from clackpy import text, select, confirm, is_cancel

name = text("Project name", placeholder="my-project")
if is_cancel(name): raise SystemExit(0)
kind = select("Project type", options=[{"value": "web", "label": "Website"}, {"value": "cli", "label": "Command-line tool"}])
if is_cancel(kind): raise SystemExit(0)
proceed = confirm("Create the project?", initial_value=True)
if is_cancel(proceed): raise SystemExit(0)
print(f"Selected: {name}, {kind}, create={proceed}")
