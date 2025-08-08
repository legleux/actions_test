from pathlib import Path
import json
import sys

print("I am building")

data = {
    "some": "data"
}

if len(sys.argv) > 1:
    input_data = sys.argv[1]
    data["some"] = input_data
    print(f"received: {input_data}")

output = Path("outfile.json")
print(output.name)
with output.open(mode="w", encoding="utf-8") as outfile:
    json.dump(data, outfile)
