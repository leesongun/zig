const expectEqual = @import("std").testing.expectEqual;
const std = @import("std");
const expect = std.testing.expect;

test "resolve array slice using builtin" {
    try expectEqual(@hasDecl(@This(), "std"), true);
    try expectEqual(@hasDecl(@This(), "std"[0..0]), false);
    try expectEqual(@hasDecl(@This(), "std"[0..1]), false);
    try expectEqual(@hasDecl(@This(), "std"[0..2]), false);
    try expectEqual(@hasDecl(@This(), "std"[0..3]), true);
    try expectEqual(@hasDecl(@This(), "std"[0..]), true);
}
