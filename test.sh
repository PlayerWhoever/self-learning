for TEST in $(find tests -iregex '.*\.in' | xargs basename -s .in); do
    echo ""
    IN=tests/$TEST.in
    OUT=tests/$TEST.out
    diff $OUT <(java FlightScheduler < $IN) && echo "testing $TEST: SUCCESS!" || echo "testing $TEST: FAILURE."
done
