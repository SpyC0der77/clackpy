# clackpy

Interactive terminal prompts for Python, inspired by [Clack](https://clack.cc). The package provides text input, masked passwords, confirmation, single selection, and multiple selection.

## Install from source

Use Python 3.7 or newer and an interactive terminal.

```bash
git clone https://github.com/SpyC0der77/clackpy.git
cd clackpy
python -m pip install -e .
```

Installation includes the `readchar` dependency for keyboard input.

## Example

```python
from clackpy import text, select, confirm, is_cancel

name = text("Project name", placeholder="my-project")
if is_cancel(name):
    raise SystemExit(0)

kind = select("Project type", options=[
    {"value": "web", "label": "Website"},
    {"value": "cli", "label": "Command-line tool"},
])
if is_cancel(kind):
    raise SystemExit(0)

proceed = confirm("Create the project?", initial_value=True)
if is_cancel(proceed):
    raise SystemExit(0)

print(name, kind, proceed)
```

## Prompt API

| Function | Returns | Useful arguments |
| --- | --- | --- |
| `text(message, ...)` | String | `placeholder`, `default_value`, `initial_value`, `validate` |
| `password(message, ...)` | String | `mask`, `validate` |
| `confirm(message, ...)` | Boolean | `active`, `inactive`, `initial_value` |
| `select(message, options, ...)` | Selected value | `initial_value`, `max_items` |
| `multiselect(message, options, ...)` | List of values | `initial_value`, `required`, `max_items` |

Every prompt can return a cancellation sentinel. Check `is_cancel(result)` before using the result. A validation callback returns an error string for invalid input or `None` for valid input. Selection options may be strings or dictionaries with `value`, `label`, and an optional `hint`.

Run the bundled interactive demo with `python clackpy/prompts.py`. Prompt rendering uses ANSI terminal controls; redirected output and non-interactive environments are not the intended use.

## License

[MIT](LICENSE).
