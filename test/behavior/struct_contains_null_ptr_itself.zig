const expectEqual = @import("std").testing.expectEqual;
const std = @import("std");
const expect = std.testing.expect;

test "struct contains null pointer which contains original struct" {
    var x: ?*NodeLineComment = null;
    try expectEqual(x, null);
}

pub const Node = struct {
    id: Id,
    comment: ?*NodeLineComment,

    pub const Id = enum {
        Root,
        LineComment,
    };
};

pub const NodeLineComment = struct {
    base: Node,
};
