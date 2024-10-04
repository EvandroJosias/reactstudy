import {useState, useEffect } from 'react';

export default function App() {
  const [input, setInput] = useState('');
  const [tarefas, setTarefas] = useState([
    'Pagar a conta de Luz',
    'Estudar React JS'
  ]
  );

  useEffect( ()=>{
    alert('teste');
  },[]);

  function handleRegister( e ){
    e.preventDefault();
    setTarefas([...tarefas, input]);
    setInput('');
  };

  return (
    <div>
      <h1>Cadastrando usuarios</h1>

      <form onSubmit={handleRegister}>
        <label>Nome da Tarefa:</label><br/>
        <input
           placeholder='Digite uma tarefa'
           value={input}
           onChange={ (e) => setInput( e.target.value)}
        /><br/>
        <button type='submit'>Registrar</button>
      </form>
      <ul>
        {tarefas.map( tarefa => (
           <li key={tarefa}>{tarefa}</li>
        ))}
      </ul>
    </div>
  );
}

