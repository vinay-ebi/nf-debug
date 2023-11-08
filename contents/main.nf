nextflow.enable.dsl=2

process generateRandom {

    script:
    """
    sleep 5
    echo generateRandom
    """
}

process squareNumber {
  

    script:
    """
    sleep 5  
    echo squareNumber
    """
}

process printResult {
  
    script:
    """
    sleep 5
    echo "printResult"
    """
}

workflow {
    generateRandom()
    squareNumber()
    printResult()
}
