#!/bin/bash

function get_and_unzip()
{
    local src=$1
    local dst=$2

    if ! [ -f $dst ]; then
        wget -q -O - $src | gzip -d > $dst
    fi
}

function site1_get_and_unzip()
{
    local filename=$1

    install -d DataTables
    echo "Fetching and unzip $filename..."
    get_and_unzip http://ftp.kh.edu.tw/odp/OXIM/cin_tables/$filename.gz DataTables/$filename
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
site1_get_and_unzip ckc.cin
site1_get_and_unzip ez.cin
site1_get_and_unzip jsm.cin
site1_get_and_unzip newcj.cin
site1_get_and_unzip newcj3.cin
site1_get_and_unzip roman.cin
site1_get_and_unzip scj62.cin
site1_get_and_unzip simplex5.cin
site1_get_and_unzip hailu.cin
site1_get_and_unzip kks_hakka_henry.cin
site1_get_and_unzip kks_hakka_tl.cin
site1_get_and_unzip sixian.cin
site1_get_and_unzip kks_tl.cin
site1_get_and_unzip phofsi.cin
site1_get_and_unzip tlpa.cin
