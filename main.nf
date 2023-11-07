nextflow.enable.dsl=2

process generateRandom {
    output:
    val(randomNumber) into random_number

    script:
    """
    echo \$(( ( RANDOM % 10 )  + 1 ))
    """
}

process squareNumber {
    input:
    val(randomNumber) from random_number

    output:
    val(squaredNumber) into final_result

    script:
    """
    echo \$(( ${randomNumber} * ${randomNumber} ))
    """
}

process printResult {
    input:
    val(squaredNumber) from final_result

    script:
    """
    echo "The squared number is ${squaredNumber}"
    """
}

workflow {
    generateRandom()
    squareNumber()
    printResult()
}
