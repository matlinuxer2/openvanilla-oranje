#!/bin/sh

relative_delta()
{
	#first_dir=$( readlink -f $1 )
	#second_dir=$( readlink -f $2 )
	first_dir=$1
	second_dir=$2
	delta="."

	while [ "${first_dir#${second_dir}}" = "${first_dir}" -a "$second_dir" != "/" -a "$second_dir" != "." ]
        do
		delta="${delta}/.."
		second_dir=$(dirname $second_dir )
        done

	delta="${delta}${first_dir#${second_dir}}"

	echo $delta
}


lndir_sh()
{
	from_dir=$( readlink -f $1 )
	to_dir=$( readlink -f $2 )

	if [ ! -d $from_dir ]; then return ; fi

	dir_delta=$( relative_delta $from_dir $to_dir )
	#echo "delta $dir_delta"

	cd $to_dir
	for entry in $(find $dir_delta)
	do
	    if [ -d $entry ]; then
                #echo "install ./${entry#$dir_delta}"
                install -d ./${entry#$dir_delta}

            elif [ -f $entry ]; then
                A=$dir_delta
                B=$entry
                prefix=$( dirname ${B#$A} | sed -e "s/\/[^\.]\w*/..\//g" )
                #echo "ln -s ./$prefix/$B ./${B#$A}"
                test -L "./${B#$A}" || ln -s ./$prefix/$B ./${B#$A}
            fi
	done
    cd -
}



CUR_DIR=$( dirname $( readlink -f $0 ) )

lndir_sh ${CUR_DIR}/../../Frameworks/ ./Frameworks/
lndir_sh ${CUR_DIR}/../../Modules/ ./Modules/

cd "${CUR_DIR}/Frameworks/OpenVanilla"
ln -sf ./Headers/ ./OpenVanilla
cd -
