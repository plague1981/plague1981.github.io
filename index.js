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
        entity:3,
        content: 'practice speech in Chinese',
        isCompleted: false
    }
]


console.log(document.getElementById('my-form'));
console.log(document.getElementsByTagName('li'));
const btn = document.querySelector('.btn');
btn.style.background = 'white'
btn.addEventListener('click',(e) =>{
    e.preventDefault();
    console.log(e.target.id);
})