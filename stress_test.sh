echo "============================================"
echo "Stress tests using batchmode; size=256"
ab -n 100 -c 1 -p input_examples/batch_256.json -T application/json -rk http://localhost:8011/prediction   
echo "DONE"