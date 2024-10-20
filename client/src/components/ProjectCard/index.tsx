import { Project } from '@/state/api'
import { format } from "date-fns";
import Image from 'next/image';
import React from 'react'

type Props = {
    project: Project
}

const ProjectCard = ({ project }: Props) => {
    return (
        <div className='border mb-3 rounded bg-white p-4 shadow dark:bg-dark-secondary dark:text-white'>
            <h3>{project.name}</h3>
            <p>{project.description}</p>
            <p>Start Date: {project.startDate}</p>
            <p>End Date: {project.endDate}</p>
        </div>
    )
}

export default ProjectCard