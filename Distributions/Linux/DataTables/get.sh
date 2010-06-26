#!/bin/bash

function get_and_unzip()
{
    local src=$1
    local dst=$2

    if ! [ -f $1 ]; then
        wget -q -O - $src | gzip -d > $dst
    fi
}

function site1_get_and_unzip()
{
    local filename=$1

    get_and_unzip http://ftp.kh.edu.tw/odp/OXIM/cin_tables/$filename.gz $filename
}

site1_get_and_unzip hiragana.cin
site1_get_and_unzip katakana.cin
site1_get_and_unzip nippon.cin
site1_get_and_unzip hangul.cin 
site1_get_and_unzip hangulromaja.cin
site1_get_and_unzip hanja.cin
site1_get_and_unzip thai.cin
site1_get_and_unzip vims.cin 
site1_get_and_unzip viqr.cin
site1_get_and_unzip pinyin0.cin
site1_get_and_unzip wubizixing2.cin
site1_get_and_unzip ile.cin
site1_get_and_unzip jyutping0.cin
site1_get_and_unzip cangjie.cin
site1_get_and_unzip uniliu.cin
site1_get_and_unzip erbi-kuai.cin
site1_get_and_unzip fcitx-erbi.cin
site1_get_and_unzip fcitx-qxm.cin
site1_get_and_unzip fcitx-wanfeng.cin
site1_get_and_unzip wbx.cin
site1_get_and_unzip zhengma.cin
site1_get_and_unzip simplecj.cin
site1_get_and_unzip 3corner.cin
site1_get_and_unzip 4corner.cin
site1_get_and_unzip 4corner5.cin
site1_get_and_unzip dapu.cin
site1_get_and_unzip dna.cin

