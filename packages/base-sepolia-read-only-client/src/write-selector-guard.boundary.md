# Write Selector Guard Boundary

Future implementation must reject every selector in the write selector blocklist.

The approval selector must remain blocked from read methods.

Approval selector: 0x095ea7b3

No write selector may be callable through the read-only client.
