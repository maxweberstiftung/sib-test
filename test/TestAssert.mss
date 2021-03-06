function TestEqual(assert, plugin) {
  //$module(TestAssert.mss)
  testAssert = plugin.Assert();
  result = testAssert.Equal(10, 10, 'equal');
  assert.OK(result, 'Equal numbers, assert OK');
  result = testAssert.Equal(10, 9, 'equal expected to fail');
  assert.NotOK(result, 'Unequal numbers, assert fails');
} //$end

function TestNotEqual(assert, plugin) {
  //$module(TestAssert.mss)
  testAssert = plugin.Assert();
  result = testAssert.NotEqual(10, 9, 'not equal');
  assert.OK(result, 'NotEqual for unequal numbers expected to be OK');
  result = testAssert.NotEqual(10, 10, 'notEqual expected to fail');
  assert.NotOK(result, 'NotEqual for equal numbers expected to fail');
} //$end

function TestOK(assert, plugin) {
  //$module(TestAssert.mss)
  testAssert = plugin.Assert();
  result = testAssert.OK(True, 'OK');
  assert.OK(result, 'OK for True expected to succeed');
  result = testAssert.OK(False, 'OK expected to fail');
  assert.NotOK(result, 'OK for False expected to fail');
} //$end

function TestNotOK(assert, plugin) {
  //$module(TestAssert.mss)
  testAssert = plugin.Assert();
  result = testAssert.NotOK(False, 'NotOK');
  assert.OK(result, 'NotOK for False expected to succeed');
  result = testAssert.NotOK(True, 'NotOK expected to fail');
  assert.NotOK(result, 'NotOK for True expected to fail');
} //$end
