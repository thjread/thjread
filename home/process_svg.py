#########################################################################
# Parse polygonal paths out of an SVG.                                  #
# Run Flatten Beziers extension in inkscape, and save as text.svg,      #
# file type plain SVG.                                                  #
# Ungroup all objects to prevent inkscape using transforms              #
#########################################################################

import re
import json

from svg.path import parse_path;
from svg.path.path import Line, Move;

with open("text.svg", "r") as textfile:
    data = textfile.read()
    paths = re.findall(r"[\s]d=\"(.+)\"", data)
    lines = []

    for path_string in paths:
        path = parse_path(path_string)
        for segment in path:
            if isinstance(segment, Line):
                line = [[segment.start.real, segment.start.imag],
                        [segment.end.real, segment.end.imag]]
                lines.append(line)
            elif not isinstance(segment, Move):
                print(f"Invalid segment type {type(segment)}")

    with open("text.js", "w") as outfile:
        s = json.dumps(lines)
        outfile.write("export default " + s + ";")
