const debug = @import("std").debug;

pub fn print_something(value: anytype) void {
    const T = comptime @TypeOf(value);
    T.print(value);
}

const Foo = struct {
    fn print(_: Foo) void {
        debug.print("foo!\n", .{});
    }
};

const Bar = struct {
    fn print(_: Bar) void {
        debug.print("bar!\n", .{});
    }
};

pub fn main() void {
    print_something(Foo{});
    print_something(Bar{});
}
