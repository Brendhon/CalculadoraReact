import React from 'react'
import './Button.css'

export default props =>
    <button className={`button ${props.attribute}`}
        onClick={_ => props.click(props.label)}>
        {props.label}
    </button>