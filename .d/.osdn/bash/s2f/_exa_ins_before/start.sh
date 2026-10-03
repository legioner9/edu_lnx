#!/bin/bash
# from:: ~/fns_bsh/.d/.p.ax/.p006.d/.p001/fl_nm.tml

fn_30748_11725(){

	l_00_echo_code "start :: <${FUNCNAME[0]}> '$@'"

    local fl_pth_fn_30748_11725="${HOME}/rpo/edu_lnx/.d/.osdn/bash/s2f/_exa_ins_before/start.sh"
    local dr_pth_fn_30748_11725=$(dirname ${HOME}/rpo/edu_lnx/.d/.osdn/bash/s2f/_exa_ins_before/start.sh)
    local fl_nm_fn_30748_11725=$(basename ${HOME}/rpo/edu_lnx/.d/.osdn/bash/s2f/_exa_ins_before/start.sh)
    local rnd=30748_11725

	#-- ~001_genv~
	# from:: ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d/001_genv.tml
	eval "local prnt1_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/..)"
	eval "local prnt2_dr_pth_fn_${rnd}=\$(readlink -m \$(eval echo \"\\\$dr_pth_fn_${rnd}\")/../..)"
	eval "fn_nm_${rnd}=\$(l_01_prs_f -n \$fl_nm_fn_${rnd})"

	#-- ~002_genv~
	# from:: ~/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d/002_genv.tml
	eval "fl_tst_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.tst/g.tst"
	eval "g_d_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.g.d"
	eval "us_dr_pth_fn_${rnd}=\$dr_pth_fn_${rnd}/.us"

	#-- {{003_genv}}
		
	#--~001_help~
	# from:: ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d/001_help.tml
	[[ "$1" == "-h" ]] && {
		echo -e "
        this -h for <${FUNCNAME[0]}> ::
        doing :: 
			\$1 - 
			\$2 - 
			\$3 - 
            exa use ::
            far use ::
        "
		l_00_echo_code "exit :: <${FUNCNAME[0]}>"
		return 0
	}

	#-- ~002_key~
# from:: ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d/002_key.tml
# that 003_key

#-- {{003_key}}
	
	# [[ "$1" == "-h" ]] && {
	#	echo -e "
    #     this -h for <${FUNCNAME[0]}> '$@' ::
    #     doingX :: 
	# 		\$1 - 
	# 		\$2 - 
	# 		\$3 - 
    #         exa use ::
    #         far use ::
    #     "
	# 	return 0
	# }

	#--~001_key~
# from:: ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d/001_key.tml
	[[ "$1" == "_tst" ]] && {
		echo -e "
        this -h for <${FUNCNAME[0]}> '$@' ::
        doing_tst :: 
			\$1 - dr_res
			\$2 - res.fl
			\$3 - 
			flow_FN ::
			flow_tst ::
            exa use ::
            far use ::			
        "
		l_00_echo_code ". $(eval "echo \$fl_tst_pth_fn_${rnd}")"
		. $(eval "echo \$fl_tst_pth_fn_${rnd}")

		l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
		return 0
		
	}

		[[ "$1" == "_vis" ]] && {
		echo -e "
        this [cat .vis] for <${FUNCNAME[0]}> '$@'::
        doing_vis :: 
			\$1 - dr_res
			\$2 - res.fl
			\$3 - 
            exa use ::
            far use ::
        "
		l_00_echo_code "cat $(eval "echo \$g_d_pth_fn_${rnd}")/g.vis"
		cat $(eval "echo \$g_d_pth_fn_${rnd}")/g.vis

		l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"
		return 0
		
	}

	#-- ~002_key~
# from:: ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d/002_key.tml
# that 003_key

#-- {{003_key}}
	
	#-- ~001_val_ind~
	# from:: ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d/001_val_ind.tml

	#* value indicator
	eval "local arg_1_fn_${rnd}=\"\$1\""
	eval "echo \\\$1=\$arg_1_fn_${rnd}"
	eval "local arg_2_fn_${rnd}=\"\$2\""
	eval "echo \\\$2=\$arg_2_fn_${rnd}"
	eval "local arg_3_fn_${rnd}=\"\$3\""
	eval "echo \\\$3=\$arg_3_fn_${rnd}"
	eval "local arg_4_fn_${rnd}=\"\$4\""
	eval "echo \\\$4=\$arg_4_fn_${rnd}"
	eval "local arg_5_fn_${rnd}=\"\$5\""
	eval "echo \\\$5=\$arg_5_fn_${rnd}"

	eval "echo \"fl_pth_fn=\$fl_pth_fn_${rnd}\""
	eval "echo \"dr_pth_fn=\$dr_pth_fn_${rnd}\""
	eval "echo \"fl_nm_fn=\$fl_nm_fn_${rnd}\""
	eval "echo \"fn_nm=\$fn_nm_${rnd}\""
	eval "echo \"prnt1_dr_pth_fn=\$prnt1_dr_pth_fn_${rnd}\""
	eval "echo \"prnt2_dr_pth_fn=\$prnt2_dr_pth_fn_${rnd}\""
	
	#-- ~002_val_ind~
	# from:: ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d/002_val_ind.tml
	eval "echo \"fl_tst_pth_fn=\$fl_tst_pth_fn_${rnd}\"" #.d/.p.ax/.p999.d/.tst/g.tst
	eval "echo \"g_d_pth_fn=\$g_d_pth_fn_${rnd}\"" #.d/.p.ax/.p999.d/.tst/g.tst
	eval "echo \"us_dr_pth_fn=\$us_dr_pth_fn_${rnd}\"" #.d/.p.ax/.p999.d/.tst/g.tst

	#-- {{003_val_ind}}
		
	# [[ -z "$1" ]] && {
	#     # snp "out_err"
	# 	l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'
	#     echo -e "${ECHO_RET1}in file://${HOME}/rpo/edu_lnx/.d/.osdn/bash/s2f/_exa/start.sh , line=${LINENO} :: ARG_1_NOT_DEFINE is ..., return 1${NRM}" >&2
	#     return 1
	# }

	#! ptr_path
	# eval "local ptr_path_1=\"$arg_1_fn_${rnd}\""
	# ptr_path_1="$(l_01_abs_path "$(pwd)" "ptr_path_1")"
	# echo "\$ptr_path_1=$ptr_path_1"
	# eval "arg_1_fn_${rnd}=\$ptr_path_1"

	# [[ -d "$2" ]] || {
	# 	# snp "out_err"
	# 	l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'
	# 	echo -e "${ECHO_RET1}in file://${HOME}/rpo/edu_lnx/.d/.osdn/bash/s2f/_exa/start.sh , line=${LINENO} :: ARG_2_NOT_DR is ..., return 1${NRM}" >&2
	# 	return 1
	# }	

	#-- ~001_stn_env~
	# from:: ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d/001_stn_env.tml
	#* STANDART ENV THAT FILE
	# arg1 ::
	# $(eval "echo \$arg_1_fn_${rnd}")
	# arg2 ::
	# $(eval "echo \$arg_2_fn_${rnd}")
	# arg3 ::
	# $(eval "echo \$arg_3_fn_${rnd}")
	# arg4 ::
	# $(eval "echo \$arg_4_fn_${rnd}")
	# arg5 ::
	# $(eval "echo \$arg_5_fn_${rnd}")
	# fl_pth_fn ::
	# $(eval "echo \$fl_pth_fn_${rnd}")
	# dr_pth_fn ::
	# $(eval "echo \$dr_pth_fn_${rnd}")
	# fl_nm_fn ::
	# $(eval "echo \$fl_nm_fn_${rnd}")
	# prnt1_dr_pth_fn ::
	# $(eval "echo \$prnt1_dr_pth_fn_${rnd}")
	# prnt2_dr_pth_fn ::
	# $(eval "echo \$prnt2_dr_pth_fn_${rnd}")
	# fl_tst_pth_fn ::
	# $(eval "echo \$fl_tst_pth_fn_${rnd}")
	# g_d_pth_fn ::
	# $(eval "echo \$g_d_pth_fn_${rnd}")
	# us_dr_pth_fn ::
	# $(eval "echo \$us_dr_pth_fn_${rnd}")
	# fn_nm::
	# $(eval "echo \$fn_nm_${rnd}")

	#-- {{002_stn_env}}

	#-- ~001_use_l~
	# from:: ~/fns_bsh/.d/.p.ax/.cmn/.cmn.tml.d/002.cmn.tml.d/001_use_l.tml
	# l_02_fs2f :: ins.f {{pre_str_in_rcv.f}} rcv.f
	# l_02_s2f :: $1 reciver_string, $2 inserter_string[@ - empty string] in $3 reciver_result_file 
	# l_03_s2Ad :: insert $1 str into str $2 in ALL LEX(4.5) LEX(4.6) recurce file from dir $3
	# l_02_d2e :: prevent stl_dir (_) stdout stl_name [,with $2 .ext] - like 'ls $1' - if in root_dir mst $1=@
	# l_01_prs_f :: pars $1 path - stdout part
	# 	path=/the/path/_foo.bar.ext.txt      
	# 	$(l_01_prs_f -d /the/path/_foo.bar.ext.txt)   : /the/path 
	# 	$(l_01_prs_f -ne /the/path/_foo.bar.ext.txt)  : _foo.bar.ext.txt   
	# 	$(l_01_prs_f -n /the/path/_foo.bar.ext.txt)   : _foo.bar.ext   
	# 	$(l_01_prs_f -n2 /the/path/_foo.bar.ext.txt)  : _foo.bar   
	# 	$(l_01_prs_f -e /the/path/_foo.bar.ext.txt)   : txt   
	# 	$(l_01_prs_f -e2 /the/path/_foo.bar.ext.txt)  : ext 
	# 	$(l_01_prs_f -pr /the/path/_foo.bar.ext.txt)  : _   
	# 	$(l_01_prs_f -po /the/path/_foo.bar.ext.txt)  : foo.bar.ext.txt  
	# l_01_is_yes :: y if_err
	# fns_bsh_001_als_gig_fn_sh :: gig in \$1 dr \$2 fn[with .ext] use ~/fns_bsh/.d/.p.ax/.p005.d (like .p003.d) [,\$3 cmn.d [,\$4 dom.d]] 
	# fns_bsh_001_als_gig_fl_sh :: gig in \$1 dr \$2 fl[with .ext] use ~/fns_bsh/.d/.p.ax/.p006.d (like .p004.d) [,\$3 cmn.d [,\$4 dom.d]]
	# lfoe_path_to_var ::  insert pth \${HOME} into string '${HOME}'
	# lfoe_gig_sh :: create $2 file in $1 dir from ${HOME}/aer_foe/.d/.sh/.lib.sh/.dta/.tml/sh1.tml

	# 	declare -A ass_arr
	# ass_arr[0, 0]=png
	# ass_arr[0, 1]=pic
	# ass_arr[1, 0]=jpg
	# ass_arr[1, 1]=pic

	# l_00_echo_sys "set_of_arr :: ass_arr ::"
	# for ((i = 0; i < "$((${#ass_arr[@]} / 2))"; i++)); do
	# 	for ((j = 0; j < 2; j++)); do
	# 		l_00_echo_info "	ass_arr[$i,$j]=${ass_arr[$i, $j]}"
	# 	done
	# done
	
	# {{002_use_l}}
	
	l_00_echo_code "body :: <${FUNCNAME[0]}> '$@'"

	#-- ~001_body~
	# from:: ~/fns_bsh/.d/.p.ax/.dom/.dom.tml.d/001.dom.tml.d/001_body.tml
    l_00_echo_code "001_body :: <${FUNCNAME[0]}>"
	cd $(eval "echo \$dr_pth_fn_${rnd}") || {
		l_00_echo_code "end :: <${FUNCNAME[0]}> '$@'"
		echo -e "${ECHO_RET1}in file://$(eval "echo \$fl_pth_fn_${rnd}") , line=${LINENO}  EXEC_FAIL : '...', return 1${NRM}" >&2
		return 1
	}

	sed '/^b/i ascsdc' init/init.fl > res.fl
	cat res.fl

    #-- {{002_body}}

	l_00_echo_code "exit :: <${FUNCNAME[0]}> '$@'"

    return 0

}

#-- ~001_after~
# from:: ~/fns_bsh/.d/.p.ax/.p006.d/.p001/fl_nm.tml.d/001_after.tml
fn_30748_11725 $@

# {{002_after}}

#? fn_30748_11725 $@
