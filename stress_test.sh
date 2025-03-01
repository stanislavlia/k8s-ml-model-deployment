echo "============================================"
echo "Stress tests using batchmode; size=256"
ab -n 1000 -c 15 -p input_examples/batch_256.json -T application/json -rk http://localhost:8011/prediction   
echo "DONE"