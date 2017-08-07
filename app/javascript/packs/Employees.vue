<template>
  <div>
    <h1>{{ title }}</h1>

    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Age</th>
        </tr>
      </thead>

      <tbody>
        <tr v-for="employee in employees">
          <td>{{ employee.name }}</td>
          <td>{{ employee.age }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>


<script>
  import axios from 'axios';
  export default {
    data() {
      return {
        employees: [],
        title: 'Employees'
      }
    },
    beforeMount() {
      axios.get('/employees.json').then(response => {
        console.log(response)
        this.employees = response.data
      })
      .catch(e => {
        console.log('*************')
        console.log(e)
        console.log('*************')
      })
    }
  }
</script>
