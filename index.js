todos = [
    {
        entity: 1,
        content: 'do home work',
        isCompleted: true
    },
    {
        entity: 2,
        content: 'play piano',
        isCompleted: false
    },
    {
        entity: 3,
        content: 'take a bath',
        isCompleted: false
    }
]

for (var todo of todos){
    if (todo.isCompleted ==true){
        console.log(todo.content);
    }
}

todos.forEach(function(todo){
    console.log(todo.content);
})
var todoCompleted = todos.filter(function(todo){
    return todo.isCompleted == true;
}).map(function(todo){
    return todo.content;
})
console.log(todoCompleted);