echo "Running main tests"
node test/runner.js -t functional
killall mongod

echo "Running auth tests"
chmod 600 test/tests/functional/key/keyfile.key
node test/runner.js -t functional -e auth
killall mongod

echo "Running replicaset tests"
node test/runner.js -t functional -e replicaset
killall mongod

echo "Running sharded tests"
node test/runner.js -t functional -e sharded
killall mongod
