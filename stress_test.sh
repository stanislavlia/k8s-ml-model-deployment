echo "============================================"
echo "Stress tests using batchmode; size=256"
ab -n 10000 -c 50 -p input_examples/batch_256.json -T application/json -rk http://137.184.248.101/prediction
echo "DONE"