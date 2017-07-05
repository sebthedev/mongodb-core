echo "Running main tests"
node test/runner.js -t functional

echo "Running auth tests"
chmod 600 test/tests/functional/key/keyfile.key
node test/runner.js -t functional -e auth

echo "Running replicaset tests"
node test/runner.js -t functional -e replicaset

echo "Running sharded tests"
node test/runner.js -t functional -e sharded
