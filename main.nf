include { T } from './modules/local/mymodule'

nextflow.enable.dsl=2

workflow{
    T()
}