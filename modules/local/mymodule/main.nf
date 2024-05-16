process T {
    container 'rocker/r-base'
    output:
        path 'out0.txt'
        path 'out1.txt'
        path 'out2.txt'
        path 'out3.txt'
        path 'out4.txt'
    script:
    """
    echo 'this works!' > out0.txt;
    which Rscript > out1.txt;
    Rscript -e '
        zz <- file("out2.txt", "wb");
        writeChar("qq", zz, eos = NULL);
        close(zz);'
    my.sh > out3.txt;
    script.R > out4.txt;
    """
}