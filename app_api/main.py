from fastapi import FastAPI, HTTPException
from models import Todo

app = FastAPI()

todos = [
    {
        "id": 1,
        "title": "Buy groceries",
        "description": "Buy groceries",
        "completed": False
    }
]

@app.get("/todos")
def get_todos():
    return todos

@app.get("/todos/{todo_id}")
def get_todo(todo_id: int):
    for todo in todos:
        if todo.id == todo_id:
            return todo
    raise HTTPException(status_code=404, detail="Todo not found")

@app.post("/todos")
def create_todo(todo: Todo):
    todos.append(todo)
    return todo

@app.put("/todos/{todo_id}")
def update_todo(todo_id: int, updated_todo: Todo):
    for index, todo in enumerate(todos):
        if todo.id == todo_id:
            todos[index] = updated_todo
            return updated_todo
    raise HTTPException(status_code=404, detail="Todo not found")

@app.delete("/todos/{todo_id}")
def delete_todo(todo_id: int):
    for index, todo in enumerate(todos):
        if todo.id == todo_id:
            del todos[index]
            return {"message": "Deleted"}
    raise HTTPException(status_code=404, detail="Todo not found")