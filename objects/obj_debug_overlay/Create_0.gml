// Create a debug log array
debug_log = array_create(0);
max_logs = 10;
depth = -10000; // Always on top

// Add first message
array_push(debug_log, "Debug overlay initialized");