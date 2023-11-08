

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
    sleep 3
    echo squareNumber
    """
}

process printResult {
    
    script:
    """
    echo "printResult"
    """
}

workflow {
    generateRandom()
    squareNumber()
    printResult()
}
