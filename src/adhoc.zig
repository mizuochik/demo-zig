const debug = @import("std").debug;

pub fn print_something(value: anytype) void {
    const T = comptime @TypeOf(value);
    T.print();
}

const Foo = struct {
    fn print() void {
        debug.print("foo!\n", .{});
    }
};

const Bar = struct {
    fn print() void {
        debug.print("bar!\n", .{});
    }
};

pub fn main() void {
    print_something(Foo{});
    print_something(Bar{});
}
