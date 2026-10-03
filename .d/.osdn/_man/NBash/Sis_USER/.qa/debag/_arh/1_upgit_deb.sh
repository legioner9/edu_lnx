#!/bin/bash
rr
upgit
echo "\$repo_arr_name: "
echo "${repo_arr_name[*]/%/$'\n'}" | column

echo "\$bare_arr_path: "
echo "${bare_arr_path[*]/%/$'\n'}" | column
