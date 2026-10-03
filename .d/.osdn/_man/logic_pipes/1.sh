#!/bin/bash

echo -e "${HLIGHT}--- true && true || echo done ---${NORMAL}" #start files
true && true || echo "done"

echo -e "${HLIGHT}--- (true && true) || echo done ---${NORMAL}" #start files
(true && true) || echo "done"

echo -e "${HLIGHT}--- true && false || echo done ---${NORMAL}" #start files
true && false || echo "done"

echo -e "${HLIGHT}--- (true && false) || echo done ---${NORMAL}" #start files
(true && false) || echo "done"

echo -e "${HLIGHT}--- false && false || echo done ---${NORMAL}" #start files
false && false || echo "done"

echo -e "${HLIGHT}--- (true || true) && echo done ---${NORMAL}" #start files
(true || true) && echo "done"

echo -e "${HLIGHT}--- (false || true) && echo done ---${NORMAL}" #start files
(false || true) && echo "done"
