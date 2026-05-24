// Intersection types allow a variable to have multiple types at once
let intersection: number & string; // this is impossible, but just a demonstration of syntax

// Realistic example with custom types:
type Draggable = {
    drag: () => void
}

type Resizable = {
    resize: () => void
}

type Widget = Draggable & Resizable;
let textBox: Widget = {
    drag: () => {},
    resize: () => {}
}