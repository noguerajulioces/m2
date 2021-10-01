import { Application } from "stimulus"
import Chart from "stimulus-chartjs"

console.log("entre aca perro");

const application = Application.start()
application.register("chart", Chart)